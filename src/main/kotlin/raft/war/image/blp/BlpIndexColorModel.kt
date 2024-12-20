package raft.war.image.blp

import java.awt.color.ColorSpace
import java.awt.image.ColorModel
import java.awt.image.DataBuffer
import java.awt.image.DirectColorModel
import java.awt.image.Raster
import java.awt.image.SampleModel
import java.awt.image.WritableRaster
import kotlin.math.sqrt

/**
 * BLP compliant index (palette) color model. Functions similar to the standard
 * IndexColorModel except permits the use of an optional separate alpha channel
 * of various bit depths.
 *
 *
 * BLP files with indexed color content always use a 256 index color palette of
 * 8 bit per channel RGB values and an optional separate 1, 4 or 8 bit alpha
 * channel to determine pixel color. The underlying Raster must use 8 bit
 * samples for index with appropriately sized samples for alpha.
 *
 * @author Imperial Good
 */
class BlpIndexColorModel(
    palette: IntArray?, alphaBits: Int,
    colorSpace: ColorSpace
) : ColorModel(
    8 + alphaBits,
    if (alphaBits == 0)
        intArrayOf(8, 8, 8)
    else
        intArrayOf(8, 8, 8, alphaBits),
    colorSpace, alphaBits != 0, false,
    resolveTransparency(alphaBits), DataBuffer.TYPE_BYTE
) {
    /**
     * Internal ColorModel used to decode palette and alpha values. Handles much
     * of the required form conversions.
     */
    private val internalColorModel: ColorModel

    /**
     * Palette used to lookup color. In form compatible with internalColorModel.
     */
    internal val palette: IntArray

    /**
     * Normalized component cache for the palette colors converted into sRGB
     * ColorSpace. This is used to speed up conversion from component values to
     * color index. Linearly perceived color components are preferred when
     * choosing a color index which is why sRGB is used.
     */
    private var normalizedComponentCache: FloatArray? = null

    /**
     * Constructs a linear RGB BLP indexed ColorModel from a palette. Up to the
     * `MAX_PALETTE_LENGTH` colors may be used. Each index of the
     * palette is in the form of 0xBBGGRR.
     *
     *
     * A palette of null will allocate a universal 8-8-4 palette. This will be
     * sufficient to hold any image with vague color accuracy. For best results
     * it is recommended to use an adaptive palette for the target image.
     *
     *
     * Alpha bits is the precision of the alpha channel. Valid values are 0, 1,
     * 4 and 8.
     *
     * @param palette   Palette this ColorModel will use.
     * @param alphaBits Precision of alpha component in bits.
     */
    constructor(palette: IntArray?, alphaBits: Int) : this(
        palette, alphaBits,
        ColorSpace.getInstance(ColorSpace.CS_LINEAR_RGB)
    )

    /**
     * Constructs a BLP indexed ColorModel from a palette. Up to the
     * `MAX_PALETTE_LENGTH` colors may be used. Each index of the
     * palette is in the form of 0xBBGGRR.
     *
     *
     * A palette of null will allocate a universal 8-8-4 palette. This will be
     * sufficient to hold any image with vague color accuracy. For best results
     * it is recommended to use an adaptive palette for the target image.
     *
     *
     * Alpha bits is the precision of the alpha channel. Valid values are 0, 1,
     * 4 and 8.
     *
     * @param palette    Palette this ColorModel will use.
     * @param alphaBits  Precision of alpha component in bits.
     * @param colorSpace RGB color space used by this ColorModel.
     */
    init {
        require(BlpEncodingType.INDEXED.isAlphaBitsValid(alphaBits)) { "Unsupported alphaBits value." }
        require(colorSpace.type == ColorSpace.TYPE_RGB) { "Unsupported color space type." }

        if (palette != null) {
            require(palette.size <= MAX_PALETTE_LENGTH) { "Unsupported palette length." }
            this.palette = palette.copyOf(MAX_PALETTE_LENGTH)
        } else {
            this.palette = createUniversalPaletteColorMap(8, 8, 4, colorSpace)
        }

        internalColorModel = DirectColorModel(
            colorSpace, 24 + alphaBits,
            0x00FF0000, 0x0000FF00, 0x000000FF, (1 shl alphaBits) - 1 shl 24,
            false, DataBuffer.TYPE_INT
        )
    }

    /**
     * Utility method to construct an internal pixel.
     *
     * @param index Palette index element.
     * @param alpha Alpha element.
     * @return Internal pixel.
     */
    private fun constructInternalPixel(index: Int, alpha: Int): Int {
        return getPaletteColor(index) or (alpha shl 24)
    }

    override fun createCompatibleSampleModel(w: Int, h: Int): SampleModel {
        return BlpPackedSampleModel(
            w, h,
            if (hasAlpha())
                intArrayOf(
                    PALETTE_INDEX_BITS,
                    getComponentSize(getNumColorComponents())
                )
            else
                intArrayOf(PALETTE_INDEX_BITS),
            null
        )
    }

    override fun createCompatibleWritableRaster(w: Int, h: Int): WritableRaster {
        val sm = createCompatibleSampleModel(w, h)
        return Raster.createWritableRaster(sm, sm.createDataBuffer(), null)
    }

    override fun getAlpha(pixel: Int): Int {
        return internalColorModel.getAlpha(pixelToInternalPixel(pixel))
    }

    override fun getAlpha(inData: Any?): Int {
        return internalColorModel.getAlpha(pixelToInternalPixel(inData))
    }

    override fun getAlphaRaster(raster: WritableRaster): WritableRaster? {
        return if (hasAlpha()) raster.createWritableChild(
            raster.getMinX(),
            raster.getMinY(), raster.getWidth(), raster.getHeight(),
            raster.getMinX(), raster.getMinY(), intArrayOf(1)
        )
        else null
    }

    val bandNumber: Int
        /**
         * Get number of bands in a pixel of this ColorModel.
         *
         * @return Band count.
         */
        get() = if (hasAlpha()) 2 else 1

    /**
     * Finds the index of the best matching color to what was requested. This
     * may be very slow but allows for maximum compatibility.
     *
     *
     * Comparison is done in a visually linear ColorSpace sRGB.
     *
     *
     * The algorithms used are for basic color quantization support. Efficiency
     * is only a minor consideration and the accuracy of the results is not
     * measured. The results should be vaguely what one can expect for indexed
     * ColorModels. For best indexed color quantization a separate algorithm
     * should be used with the results fed to this color model.
     *
     * @param normComponents normalized components
     * @param normOffset     offset in normalized components array
     * @return index of closest matching color
     */
    private fun getBestPaletteIndex(normComponents: FloatArray, normOffset: Int): Int {
        // need color cache
        populateComponentCache()

        // Prepare desired sRGB components.
        var desiredComponents: FloatArray
        desiredComponents = normComponents.copyOfRange(normOffset, normOffset + 3)
        if (!getColorSpace().isCS_sRGB) {
            desiredComponents = getColorSpace().toRGB(desiredComponents)
        }

        // Search for closest match.
        var best = -1
        val nComponents = getColorSpace().numComponents
        var bestDiff = Float.Companion.MAX_VALUE
        var i = 0
        while (i < palette.size) {
            val cacheOffset = i * nComponents

            // compare color channels using euclidian distance
            var diff = 0f
            var component = 0
            while (component < nComponents) {
                val delta = (normalizedComponentCache!![cacheOffset + component]
                        - desiredComponents[component])
                diff += delta * delta
                component += 1
            }
            diff = sqrt(diff.toDouble()).toFloat()

            // find best result
            if (diff < bestDiff) {
                best = i
                bestDiff = diff
            }
            i += 1
        }

        return best
    }

    override fun getBlue(pixel: Int): Int {
        return internalColorModel.getBlue(pixelToInternalPixel(pixel))
    }

    override fun getBlue(inData: Any?): Int {
        return internalColorModel.getBlue(pixelToInternalPixel(inData))
    }

    override fun getComponents(pixel: Int, components: IntArray?, offset: Int): IntArray? {
        return internalColorModel.getComponents(
            pixelToInternalPixel(pixel),
            components, offset
        )
    }

    override fun getComponents(pixel: Any?, components: IntArray?, offset: Int): IntArray? {
        return internalColorModel.getComponents(
            pixelToInternalPixel(pixel),
            components, offset
        )
    }

    override fun getDataElement(normComponents: FloatArray, normOffset: Int): Int {
        var pixel = getBestPaletteIndex(normComponents, normOffset)
        if (hasAlpha()) {
            pixel = pixel or (((internalColorModel.getDataElement(
                normComponents,
                normOffset
            ) shr 24) and 0xFF) shl 8)
        }

        return pixel
    }

    override fun getDataElement(components: IntArray, offset: Int): Int {
        var pixel = (getBestPaletteIndex(
            internalColorModel
                .getNormalizedComponents(components, offset, null, 0), 0
        )
                and 0xFF)

        if (hasAlpha()) pixel = pixel or (components[offset + 3] shl 8)

        return pixel
    }

    override fun getDataElements(
        normComponents: FloatArray, normOffset: Int,
        obj: Any?
    ): Any {
        var obj = obj
        if (obj == null) {
            obj = ByteArray(this.bandNumber)
        }
        val bytepixel = obj as ByteArray

        bytepixel[0] = getBestPaletteIndex(normComponents, normOffset).toByte()

        if (hasAlpha()) {
            bytepixel[1] = (internalColorModel.getUnnormalizedComponents(
                normComponents, normOffset, null,
                0
            )[getNumColorComponents()]).toByte()
        }

        return obj
    }

    override fun getDataElements(rgb: Int, pixel: Any?): Any {
        var pixel = pixel
        if (pixel == null) {
            pixel = ByteArray(this.bandNumber)
        }
        val bytepixel = pixel as ByteArray

        val rgbpixel = internalColorModel.getDataElements(rgb, null)

        bytepixel[0] = getBestPaletteIndex(
            internalColorModel.getNormalizedComponents(rgbpixel, null, 0),
            0
        ).toByte()

        if (hasAlpha()) {
            bytepixel[1] = internalColorModel.getComponents(
                rgbpixel,
                null, 0
            )[getNumColorComponents()].toByte()
        }

        return pixel
    }

    override fun getDataElements(components: IntArray, offset: Int, obj: Any?): Any {
        var obj = obj
        if (obj == null) {
            obj = ByteArray(this.bandNumber)
        }
        val bytepixel = obj as ByteArray

        bytepixel[0] = getBestPaletteIndex(
            internalColorModel
                .getNormalizedComponents(components, offset, null, 0), 0
        ).toByte()

        if (hasAlpha()) bytepixel[1] = components[offset + getNumColorComponents()].toByte()

        return obj
    }

    override fun getGreen(pixel: Int): Int {
        return internalColorModel.getGreen(pixelToInternalPixel(pixel))
    }

    override fun getGreen(inData: Any?): Int {
        return internalColorModel.getGreen(pixelToInternalPixel(inData))
    }

    /**
     * Return a copy of the palette used. Color indices correspond with pixel
     * values and the returned array will always have a length of
     * `MAX_PALETTE_LENGTH`. Indices can be processed using a color
     * model returned from **createPaletteColorModel**.
     *
     * @return Array of palette colors.
     */
    fun getPalette(): IntArray? {
        return palette.clone()
    }

    /**
     * Lookup a color in the palette.
     *
     * @param index Index of requested color.
     * @return Color compatible with `paletteColorModel`.
     */
    private fun getPaletteColor(index: Int): Int {
        return palette[index] and 0xFFFFFF
    }

    override fun getRed(pixel: Int): Int {
        return internalColorModel.getRed(pixelToInternalPixel(pixel))
    }

    override fun getRed(inData: Any?): Int {
        return internalColorModel.getRed(pixelToInternalPixel(inData))
    }

    override fun getRGB(pixel: Int): Int {
        return internalColorModel.getRGB(pixelToInternalPixel(pixel))
    }

    override fun getRGB(inData: Any?): Int {
        return internalColorModel.getRGB(pixelToInternalPixel(inData))
    }

    override fun isCompatibleRaster(raster: Raster): Boolean {
        return isCompatibleSampleModel(raster.getSampleModel())
                && raster.getNumBands() == this.bandNumber
    }

    override fun isCompatibleSampleModel(sm: SampleModel): Boolean {
        // validate number of bands
        val bands = this.bandNumber
        if (sm.getNumBands() != bands) {
            return false
        }

        // transfer type must always be TYPE_BYTE
        if (sm.transferType != DataBuffer.TYPE_BYTE) {
            return false
        }

        // check index band size
        if (sm.getSampleSize(0) != PALETTE_INDEX_BITS) return false

        // check alpha band size
        return !hasAlpha() || sm
            .getSampleSize(1) == getComponentSize(getNumColorComponents())
    }

    /**
     * Utility method to convert an input pixel into an internal pixel for
     * processing.
     *
     * @param pixel Input pixel.
     * @return Internal pixel.
     */
    private fun pixelToInternalPixel(pixel: Int): Int {
        val index = pixel and 0xFF
        val alpha = if (hasAlpha()) pixel ushr 8 and 0xFF else 0
        return constructInternalPixel(index, alpha)
    }

    /**
     * Utility method to convert an input pixel into an internal pixel for
     * processing.
     *
     * @param inData Array of pixel values.
     * @return Internal pixel.
     */
    private fun pixelToInternalPixel(inData: Any?): Int {
        val pixel = inData as ByteArray
        val index = pixel[0].toUInt().toInt()
        val alpha = if (hasAlpha()) pixel[1].toUInt().toInt() else 0
        return constructInternalPixel(index, alpha)
    }

    /**
     * Populates the color component cache used to help select which color index
     * to use to represent a color. This cache is populated only when converting
     * from components to a pixel.
     */
    private fun populateComponentCache() {
        // only initialize once, this is expensive
        if (normalizedComponentCache != null) return

        val nColorComponents = internalColorModel.getNumColorComponents()
        val nComponents = internalColorModel.getNumComponents()
        normalizedComponentCache = FloatArray(palette.size * nColorComponents)

        val componentCacheArray = IntArray(nComponents)
        val normCacheArray = FloatArray(nComponents)
        var i = 0
        while (i < palette.size) {
            // normalize pixel
            val pixel = getPaletteColor(i)
            internalColorModel
                .getNormalizedComponents(
                    internalColorModel.getComponents(
                        pixel,
                        componentCacheArray, 0
                    ),
                    0, normCacheArray, 0
                )

            // translate color components to sRGB
            val srgbComponents = internalColorModel.getColorSpace()
                .toRGB(normCacheArray)

            // cache
            val offset = i * nColorComponents
            System.arraycopy(
                srgbComponents, 0, normalizedComponentCache!!,
                offset, nColorComponents
            )
            i += 1
        }
    }

    companion object {
        /**
         * Number of bits used for palette entries.
         */
        const val PALETTE_INDEX_BITS: Int = 8

        /**
         * Maximum palette length for this ColorModel.
         */
        const val MAX_PALETTE_LENGTH: Int = 1 shl PALETTE_INDEX_BITS

        /**
         * Produces a ColorModel suitable for producing palette entries in the
         * specified ColorSpace. The ColorModel can be used to decode or encode
         * colors in the palette.
         *
         *
         * The ColorSpace must be an RGB type.
         *
         * @param colorSpace RGB color space of the palette.
         * @return ColorModel suitable for interacting with the palette.
         */
        fun createPaletteColorModel(
            colorSpace: ColorSpace
        ): ColorModel {
            require(colorSpace.type == ColorSpace.TYPE_RGB) { "Unsupported color space type." }
            return DirectColorModel(
                colorSpace, 24, 0x00FF0000, 0x0000FF00,
                0x000000FF, 0, false, DataBuffer.TYPE_INT
            )
        }

        /**
         * Construct a universal palette with the specified number of color levels.
         *
         *
         * A color must have at least 2 levels, allowing for 0.0f and 1.0f
         * intensities. The total product of all color levels must be less than
         * `MAX_PALETTE_LENGTH`.
         *
         *
         * Color levels are distributed evenly within the sRGB ColorSpace. These are
         * then converted for use with colorSpace.
         *
         * @param redLevels   Number of red levels.
         * @param greenLevels Number of green levels.
         * @param blueLevels  Number of blue levels.
         * @param colorSpace  Intended color space of the palette.
         * @return Populated palette.
         */
        fun createUniversalPaletteColorMap(
            redLevels: Int,
            greenLevels: Int, blueLevels: Int,
            colorSpace: ColorSpace
        ): IntArray {
            require(colorSpace.type == ColorSpace.TYPE_RGB) { "Unsupported color space type." }
            require(redLevels >= 2) { "Invalid redLevels value." }
            require(greenLevels >= 2) { "Invalid greenLevels value." }
            require(blueLevels >= 2) { "Invalid blueLevels value." }
            require(redLevels * greenLevels * blueLevels <= MAX_PALETTE_LENGTH) { "Requires too many colors." }

            val palette = IntArray(MAX_PALETTE_LENGTH)
            val sRGBComponents = FloatArray(3)
            val colorMapColorModel: ColorModel = createPaletteColorModel(
                colorSpace
            )
            var i = 0
            var r = 0
            while (r < redLevels) {
                sRGBComponents[0] = r.toFloat() / (redLevels - 1).toFloat()
                var g = 0
                while (g < greenLevels) {
                    sRGBComponents[1] = g.toFloat() / (greenLevels - 1).toFloat()
                    var b = 0
                    while (b < blueLevels) {
                        sRGBComponents[2] = b.toFloat() / (blueLevels - 1).toFloat()
                        palette[i++] = colorMapColorModel.getDataElement(
                            colorSpace.fromRGB(sRGBComponents), 0
                        )
                        b += 1
                    }
                    g += 1
                }
                r += 1
            }

            return palette
        }

        /**
         * Utility method to convert an alpha bits amount into a transparency mode
         * as defined by Transparency interface.
         *
         * @param alphaBits Number of bits in alpha channel.
         * @return Transparency mode.
         */
        private fun resolveTransparency(alphaBits: Int): Int {
            if (alphaBits == 0) {
                return OPAQUE
            } else if (alphaBits == 1) {
                return BITMASK
            }
            return TRANSLUCENT
        }
    }
}
