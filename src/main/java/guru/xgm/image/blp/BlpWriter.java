package guru.xgm.image.blp;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.WritableRaster;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.IIOException;
import javax.imageio.IIOImage;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.event.IIOWriteWarningListener;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.stream.FileImageOutputStream;
import javax.imageio.stream.ImageOutputStream;

import guru.xgm.image.blp.intellij.BlpBundle;

import static guru.xgm.image.blp.BlpWriteParam.ScaleOptimization;
import static guru.xgm.image.blp.BlpStreamMetadata.LEGACY_MAX_DIMENSION;

public class BlpWriter extends ImageWriter {
    private int imageIndex = 0;
    private BlpStreamMetadata streamMetadata = null;

    private static abstract class MipmapWriter {
        public void writeMipmapManager(ImageOutputStream ios)
                throws IOException {
        }

        public void startMipmapSequence(ImageOutputStream ios)
                throws IOException {
        }

        public abstract void setMipmapDataChunk(int mipmap, byte[] mmData)
                throws IOException;
    }

    private MipmapWriter mipmapWriter = null;
    private BlpMipmapProcessor blpMipmapProcessor = null;
    private ImageOutputStream iosOutput = null;
    private boolean internalOutput = false;
    private boolean badOutput = false;
    private List<byte[]> mmDataList = null;
    private boolean canWriteMipmaps = false;

    public BlpWriter(ImageWriterSpi originatingProvider) {
        super(originatingProvider);
    }

    @Override
    public IIOMetadata getDefaultStreamMetadata(ImageWriteParam param) {
        BlpStreamMetadata smd = new BlpStreamMetadata();
        if (param instanceof BlpWriteParam blpParam) {
            smd.setMipmaps(blpParam.isAutoMipmap());
            ImageTypeSpecifier its = blpParam.getDestinationType();
            if (its != null) {
                ColorModel cm = its.getColorModel();
                if (cm instanceof BlpIndexColorModel) {
                    smd.setEncoding(BlpEncodingType.INDEXED, (byte) cm
                            .getComponentSize(cm.getNumColorComponents()));
                } else if (cm instanceof IndexColorModel) {
                    smd.setEncoding(BlpEncodingType.INDEXED, (byte) 0);
                } else {
                    smd.setEncoding(BlpEncodingType.JPEG,
                            (byte) (cm.hasAlpha() ? 8 : 0));
                }
            }
        }
        return smd;
    }

    @Override
    public IIOMetadata getDefaultImageMetadata(ImageTypeSpecifier imageType,
                                               ImageWriteParam param) {
        return null;
    }

    @Override
    public IIOMetadata convertStreamMetadata(IIOMetadata inData,
                                             ImageWriteParam param) {
        return getDefaultStreamMetadata(param);
    }

    @Override
    public IIOMetadata convertImageMetadata(IIOMetadata inData,
                                            ImageTypeSpecifier imageType, ImageWriteParam param) {
        return null;
    }

    @Override
    public ImageWriteParam getDefaultWriteParam() {
        return new BlpWriteParam();
    }

    /**
     * Sends all attached warning listeners a warning message. The messages will
     * be localized for each warning listener.
     *
     * @param msg   the warning message to send to all warning listeners.
     * @param level the mipmap level the warning occured for.
     */
    protected void processWarningOccurred(String msg, int level) {
        if (warningListeners == null)
            return;
        else if (msg == null)
            throw new IllegalArgumentException("msg is null.");
        for (IIOWriteWarningListener listener : warningListeners) {
            listener.warningOccurred(this, level, msg);
        }
    }

    @Override
    public void write(IIOMetadata streamMetadata, IIOImage image,
                      ImageWriteParam param) throws IOException {
        // validate paramters
        if (image.hasRaster())
            throw new UnsupportedOperationException("Cannot encode raster.");
        else if (output == null)
            throw new IllegalStateException("No output.");
        else if (badOutput)
            throw new IIOException("Cannot write to stream.");

        // process output
        if (iosOutput == null) {
            // identify output type
            if (output instanceof File) {
                iosOutput = new FileImageOutputStream((File) output);
                internalOutput = true;
            } else if (output instanceof Path) {
                iosOutput = new FileImageOutputStream(((Path) output).toFile());
                internalOutput = true;
            } else if (output instanceof ImageOutputStream) {
                iosOutput = (ImageOutputStream) output;
            } else {
                throw new IllegalStateException("Unsupported output.");
            }

            // check stream is empty
            if (iosOutput.length() > 0) {
                badOutput = true;
                throw new IIOException("Stream not empty.");
            }
        }

        RenderedImage im = image.getRenderedImage();

        // Prepare default param if required.
        if (param == null) {
            param = getDefaultWriteParam();
            param.setDestinationType(new ImageTypeSpecifier(im));
        }

        // get image processing values
        Rectangle sourceRegion = new Rectangle(0, 0, im.getWidth(),
                im.getHeight());
        int sourceXSubsampling = 1;
        int sourceYSubsampling = 1;
        int[] sourceBands = null;
        Point destOff = new Point();
        Rectangle sourceRegionParam = param.getSourceRegion();
        if (sourceRegionParam != null)
            sourceRegion = sourceRegion.intersection(param
                    .getSourceRegion());
        destOff = param.getDestinationOffset();
        sourceXSubsampling = param.getSourceXSubsampling();
        sourceYSubsampling = param.getSourceYSubsampling();
        sourceBands = param.getSourceBands();
        int subsampleXOffset = param.getSubsamplingXOffset();
        int subsampleYOffset = param.getSubsamplingYOffset();
        sourceRegion.x += subsampleXOffset;
        sourceRegion.y += subsampleYOffset;
        sourceRegion.width -= subsampleXOffset;
        sourceRegion.height -= subsampleYOffset;

        // create source Raster
        int width = sourceRegion.width;
        int height = sourceRegion.height;
        Raster imRas = im.getData(sourceRegion);
        int numBands = imRas.getNumBands();

        // validate source bands
        if (sourceBands != null) {
            for (final int bandOff : sourceBands) {
                if (bandOff < 0 || numBands <= bandOff) {
                    throw new IllegalArgumentException("Bad source bands.");
                }
            }
        }

        // translate raster and apply bands
        imRas = imRas.createChild(sourceRegion.x, sourceRegion.y, width,
                height, 0, 0, sourceBands);

        // apply subsampling to width and height
        width = (width + sourceXSubsampling - 1) / sourceXSubsampling;
        height = (height + sourceYSubsampling - 1) / sourceYSubsampling;

        // create and fill destination WritableRaster
        WritableRaster destWR = imRas.createCompatibleWritableRaster(destOff.x,
                destOff.y, width + destOff.x, height + destOff.y);
        Object transferCache = null;
        for (int y = 0; y < height; y += 1) {
            for (int x = 0; x < width; x += 1) {
                transferCache = imRas.getDataElements(x * sourceXSubsampling, y
                        * sourceYSubsampling, transferCache);
                destWR.setDataElements(x, y, transferCache);
            }
        }

        // create destination BufferedImage
        ColorModel srcCM = im.getColorModel();
        BufferedImage destImg = new BufferedImage(srcCM, destWR,
                srcCM.isAlphaPremultiplied(), null);
        int destW = destImg.getWidth();
        int destH = destImg.getHeight();

        // stream setup
        if (imageIndex == 0) {
            // process stream metadata
            if (!(streamMetadata instanceof BlpStreamMetadata)) {
                streamMetadata = convertStreamMetadata(streamMetadata, param);
            }
            this.streamMetadata = (BlpStreamMetadata) streamMetadata;

            // resolve output image dimensions
            boolean rescaleDest = false;
            ScaleOptimization autoScale = ScaleOptimization.CLAMP;
            if (param instanceof BlpWriteParam)
                autoScale = ((BlpWriteParam) param).getScaleOptimization();
            int worst = Math.max(destW, destH);
            final int max_dimension = this.streamMetadata.getVersion() < 2 ? LEGACY_MAX_DIMENSION
                    : this.streamMetadata.getDimensionMaximum();
            if (worst > max_dimension) {
                switch (autoScale) {
                    case RATIO:
                        destW = (int) (((long) destW * max_dimension + worst / 2) / worst);
                        destH = (int) (((long) destH * max_dimension + worst / 2) / worst);
                        rescaleDest = true;
                        break;
                    case CLAMP:
                        destW = Math.min(destW, max_dimension);
                        destH = Math.min(destH, max_dimension);
                        rescaleDest = true;
                        break;
                    default:
                        break;
                }
            }
            this.streamMetadata.setHeight(destH);
            this.streamMetadata.setWidth(destW);
            if (!(param instanceof BlpWriteParam)) {
                this.streamMetadata.setEncoding(BlpEncodingType.JPEG, srcCM.hasAlpha() ? (byte) 8 : (byte) 0);
            }

            // rescale output image if required
            if (rescaleDest) {
                processWarningOccurred(BlpBundle.message("WriteResize",
                        destImg.getWidth(), destImg.getHeight(), destW,
                        destH), imageIndex);
                BufferedImage destImgNew = new BufferedImage(srcCM, destImg
                        .getRaster().createCompatibleWritableRaster(destW,
                                destH), srcCM.isAlphaPremultiplied(), null);
                Graphics2D graphics = destImgNew.createGraphics();
                RenderingHints rh = new RenderingHints(
                        RenderingHints.KEY_INTERPOLATION,
                        RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR);
                graphics.setRenderingHints(rh);
                graphics.drawImage(destImg.getScaledInstance(destW, destH,
                        Image.SCALE_AREA_AVERAGING), 0, 0, destW, destH, null);
                graphics.dispose();
                destImg = destImgNew;
            }

            // construct mipmap manager
            if (this.streamMetadata.getVersion() < 1) {
                // external mipmaps
                Path path;
                if (output instanceof File)
                    path = ((File) output).toPath();
                else if (output instanceof Path)
                    path = (Path) output;
                else
                    throw new IllegalStateException(
                            "Version 0 can only be written to Path of File.");
                BlpExternalMipmapManager emm = new BlpExternalMipmapManager(path);
                mipmapWriter = new MipmapWriter() {
                    @Override
                    public void setMipmapDataChunk(int mipmap, byte[] mmData)
                            throws IOException {
                        emm.setMipmapDataChunk(mipmap, mmData);
                    }
                };
            } else {
                // internal mipmaps
                BlpInternalMipmapManager imm = new BlpInternalMipmapManager();
                mipmapWriter = new MipmapWriter() {
                    private long objectPos = -1L;

                    @Override
                    public void writeMipmapManager(ImageOutputStream ios)
                            throws IOException {
                        if (objectPos == -1L) {
                            objectPos = ios.getStreamPosition();
                        } else {
                            ios.seek(objectPos);
                        }
                        imm.writeObject(ios);
                    }

                    @Override
                    public void startMipmapSequence(ImageOutputStream ios)
                            throws IOException {
                        imm.setMipmapDataChunkBlockOffset(ios);
                    }

                    @Override
                    public void setMipmapDataChunk(int mipmap, byte[] mmData)
                            throws IOException {
                        imm.setMipmapDataChunk(iosOutput, mipmap, mmData);
                    }
                };
            }

            // construct mipmap processor
            BlpEncodingType encodingType = this.streamMetadata
                    .getEncodingType();
            switch (encodingType) {
                case INDEXED:
                    blpMipmapProcessor = new BlpIndexedBlpMipmapProcessor(
                            this.streamMetadata.getAlphaBits());
                    break;
                case JPEG:
                    blpMipmapProcessor = new BlpJPEGBlpMipmapProcessor(
                            this.streamMetadata.getAlphaBits());
                    break;
                case UNKNOWN:
                default:
                    throw new IIOException("Unsupported encoding type.");
            }

            // write out header
            iosOutput.seek(0);
            this.streamMetadata.writeObject(iosOutput);
            mipmapWriter.writeMipmapManager(iosOutput);

            mmDataList = new ArrayList<byte[]>(
                    this.streamMetadata.getMipmapCount());
        }

        // mipmap count test
        final int mmCount = this.streamMetadata.getMipmapCount();
        if (imageIndex >= mmCount)
            throw new IIOException("Image limit reached.");

        // image scale test
        int mmH = this.streamMetadata.getHeight(imageIndex);
        int mmW = this.streamMetadata.getWidth(imageIndex);
        if (destW != mmW || destH != mmH)
            throw new IIOException(
                    String.format(
                            "Invalid image dimensions: Got %d*%d pixels requires %d*%d pixels.",
                            destW, destH, mmW, mmH));

        // encode image
        processImageStarted(imageIndex);
        byte[] mmData = blpMipmapProcessor.encodeMipmap(destImg, param,
                warn -> this.processWarningOccurred(warn, imageIndex));

        // write out mipmap data
        if (blpMipmapProcessor.mustPostProcess()) {
            mmDataList.add(mmData);
        } else {
            if (!canWriteMipmaps && blpMipmapProcessor.canDecode()) {
                blpMipmapProcessor.writeObject(iosOutput);
                mipmapWriter.startMipmapSequence(iosOutput);
                canWriteMipmaps = true;
            }
            mipmapWriter.setMipmapDataChunk(imageIndex, mmData);
            mipmapWriter.writeMipmapManager(iosOutput);
        }
        imageIndex += 1;
        processImageComplete();

        // resolve auto mipmap
        boolean autoMipmap = true;
        if (param instanceof BlpWriteParam) {
            autoMipmap = ((BlpWriteParam) param).isAutoMipmap();
        }

        // apply auto mipmaps
        if (autoMipmap) {
            RenderingHints rh = new RenderingHints(
                    RenderingHints.KEY_INTERPOLATION,
                    RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR);
            while (imageIndex < mmCount) {
                // create scaled image
                processImageStarted(imageIndex);
                mmH = this.streamMetadata.getHeight(imageIndex);
                mmW = this.streamMetadata.getWidth(imageIndex);
                BufferedImage mmImg = new BufferedImage(srcCM, destImg
                        .getRaster().createCompatibleWritableRaster(mmW, mmH),
                        srcCM.isAlphaPremultiplied(), null);
                Graphics2D graphics = mmImg.createGraphics();
                graphics.setRenderingHints(rh);
                graphics.drawImage(destImg.getScaledInstance(mmW, mmH,
                        Image.SCALE_AREA_AVERAGING), 0, 0, mmW, mmH, null);
                graphics.dispose();

                // encode image
                mmData = blpMipmapProcessor.encodeMipmap(mmImg, param,
                        warn -> this.processWarningOccurred(warn, imageIndex));

                // write out mipmap data
                if (blpMipmapProcessor.mustPostProcess()) {
                    mmDataList.add(mmData);
                } else {
                    mipmapWriter.setMipmapDataChunk(imageIndex, mmData);
                    mipmapWriter.writeMipmapManager(iosOutput);
                }
                imageIndex += 1;
                processImageComplete();
            }
        }

        if (imageIndex == mmCount) {
            // post process mipmaps
            if (blpMipmapProcessor.mustPostProcess()) {
                mmDataList = blpMipmapProcessor.postProcessMipmapData(mmDataList,
                        warn -> this.processWarningOccurred(warn, -1));
                blpMipmapProcessor.writeObject(iosOutput);
                mipmapWriter.startMipmapSequence(iosOutput);
                canWriteMipmaps = true;
                for (int i = 0; i < mmCount; i += 1) {
                    mipmapWriter.setMipmapDataChunk(i, mmDataList.get(i));
                }
                mipmapWriter.writeMipmapManager(iosOutput);
                mmDataList.clear();
            }

            // close internal image output stream
            if (internalOutput) {
                iosOutput.close();
                internalOutput = false;
            }
        }
    }

    @Override
    public void setOutput(Object output) {
        super.setOutput(output);

        // close internal image output stream
        if (internalOutput) {
            try {
                iosOutput.close();
            } catch (IOException e) {
                processWarningOccurred(BlpBundle.message("ISCloseFail", e.getMessage()), -1);
            }
        }

        // warn if incomple file was written
        if (!badOutput && streamMetadata != null
                && imageIndex != streamMetadata.getMipmapCount()) {
            processWarningOccurred(BlpBundle.message("IncompleteFile"), -1);
        }

        // reset state
        imageIndex = 0;
        streamMetadata = null;
        mipmapWriter = null;
        blpMipmapProcessor = null;
        iosOutput = null;
        internalOutput = false;
        badOutput = false;
        mmDataList = null;
        canWriteMipmaps = false;
    }

    @Override
    public void dispose() {
        setOutput(null);
    }

}
