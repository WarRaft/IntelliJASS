package guru.xgm.image.blp

import java.awt.image.DataBuffer
import java.awt.image.DataBufferByte
import java.awt.image.SampleModel

/**
 * SampleModel to help process BLP indexed content. Acts like a multi banded non
 * standard MultiPixelPackedSampleModel.
 *
 *
 * All samples for each band are stored in a block. Band blocks are stored
 * sequentially in the same bank. Pixel packing occurs from least significant
 * bit towards most significant bit.
 *
 *
 * Although intended for use with samples with power of 2 bit length, other bit
 * lengths are supported. The only restriction is that sample bit length is less
 * than 8. Sample bit lengths that do not divide 8 by a whole number will pad
 * the most significant bits.
 *
 *
 * This SampleModel is not intended to be fast.
 *
 * @author Imperial Good
 */
class BLPPackedSampleModel(w: Int, h: Int, bandSizes: IntArray, bands: IntArray?) :
    SampleModel(DataBuffer.TYPE_BYTE, w, h, bands?.size ?: bandSizes.size) {
    /**
     * Band sizes array.
     */
    private val bandSizes: IntArray

    /**
     * Band offset array.
     */
    private val bandOffsets: IntArray

    /**
     * Bands redirection array used to determine the number of advertised bands.
     */
    private val bands: IntArray

    init {
        var myBands = bands
        // validate arguments
        for (bandSize in bandSizes) {
            require(!(bandSize < 1 || 8 < bandSize)) { "Invalid bandSizes." }
        }

        this.bandSizes = bandSizes.clone()

        // compute band offsets
        bandOffsets = IntArray(bandSizes.size + 1)
        var i = 0
        while (i < bandSizes.size) {
            val baseOffset = bandOffsets[i]
            val bandSize = bandSizes[i]
            bandOffsets[i + 1] = baseOffset + (w * h * bandSize + 7) / 8
            i += 1
        }

        // process bands
        if (myBands == null) {
            myBands = IntArray(bandSizes.size)
            i = 0
            while (i < myBands.size) {
                myBands[i] = i
                i += 1
            }
        } else {
            myBands = myBands.clone()
            for (bandref in myBands) {
                require(!(bandref < 0 || bandSizes.size <= bandref)) { "Invalid bands." }
            }
        }
        this.bands = myBands
    }

    override fun getNumDataElements(): Int {
        return numBands
    }

    override fun getDataElements(x: Int, y: Int, obj: Any?, data: DataBuffer): Any {
        // process obj
        var myObj: Any? = obj
        if (myObj == null) myObj = ByteArray(numBands)
        val pixel = myObj as ByteArray

        // get pixel
        var i = 0
        while (i < numBands) {
            pixel[i] = getSample(x, y, i, data).toByte()
            i += 1
        }

        return myObj
    }

    override fun setDataElements(x: Int, y: Int, obj: Any, data: DataBuffer) {
        // process obj
        val pixel = obj as ByteArray

        // set pixel
        var i = 0
        while (i < numBands) {
            setSample(x, y, i, pixel[i].toInt(), data)
            i += 1
        }
    }

    private fun getPixelNumber(x: Int, y: Int): Int {
        return x + width * y
    }

    private fun getSamplePacking(b: Int): Int {
        return 8 / bandSizes[b]
    }

    private fun getElementNumber(pixelNumber: Int, samplePacking: Int, b: Int): Int {
        return bandOffsets[b] + pixelNumber / samplePacking
    }

    private fun getSampleOffset(pixelNumber: Int, samplePacking: Int, b: Int): Int {
        return (pixelNumber % samplePacking) * bandSizes[b]
    }

    private fun getSampleMask(b: Int): Int {
        return (1 shl bandSizes[b]) - 1
    }

    override fun getSample(x: Int, y: Int, b: Int, data: DataBuffer): Int {
        var myB = b
        myB = bands[myB]
        val pixelNumber = getPixelNumber(x, y)
        val samplePacking = getSamplePacking(myB)
        return data.getElem(getElementNumber(pixelNumber, samplePacking, myB)) shr getSampleOffset(
            pixelNumber, samplePacking, myB
        ) and getSampleMask(myB)
    }

    override fun setSample(x: Int, y: Int, b: Int, s: Int, data: DataBuffer) {
        var myB = b
        myB = bands[myB]
        val pixelNumber = getPixelNumber(x, y)
        val samplePacking = getSamplePacking(myB)
        val elementNumber = getElementNumber(
            pixelNumber, samplePacking,
            myB
        )
        val sampleOff = getSampleOffset(pixelNumber, samplePacking, myB)
        val sampleMask = getSampleMask(myB)
        data.setElem(
            elementNumber, (data.getElem(elementNumber)
                    and (sampleMask shl sampleOff).inv()) or ((s and sampleMask) shl sampleOff)
        )
    }

    override fun createCompatibleSampleModel(w: Int, h: Int): BLPPackedSampleModel {
        return BLPPackedSampleModel(w, h, bandSizes, bands)
    }

    override fun createSubsetSampleModel(bands: IntArray): SampleModel {
        // validation
        require(bands.size <= numBands) { "Too many bands." }

        // process band redirection
        val bandUsed = BooleanArray(this.bands.size)
        val destBands = IntArray(bands.size)
        var i = 0
        while (i < bands.size) {
            val bandref = bands[i]
            require(!(bandref < 0 || this.bands.size <= bandref || bandUsed[bandref])) { "Invalid bands." }
            bandUsed[bandref] = true
            destBands[i] = this.bands[bandref]
            i += 1
        }

        return BLPPackedSampleModel(width, height, bandSizes, destBands)
    }

    val bufferSize: Int
        get() = bandOffsets[bandOffsets.size - 1]

    override fun createDataBuffer(): DataBuffer {
        return DataBufferByte(bufferSize)
    }

    override fun getSampleSize(): IntArray {
        // generate band size array
        val bandSizes = IntArray(numBands)
        var i = 0
        while (i < numBands) {
            bandSizes[i] = this.bandSizes[bands[i]]
            i += 1
        }

        return bandSizes
    }

    override fun getSampleSize(band: Int): Int {
        return bandSizes[bands[band]]
    }
}
