package guru.xgm.image.blp.intellij

import com.intellij.ide.AppLifecycleListener
import com.intellij.ide.plugins.DynamicPluginListener
import com.intellij.ide.plugins.IdeaPluginDescriptor
import guru.xgm.image.blp.BLPReaderSpi
import guru.xgm.image.blp.BLPWriterSpi
import javax.imageio.spi.IIORegistry
import javax.imageio.spi.ImageReaderSpi
import javax.imageio.spi.ImageWriterSpi

class BlpMetadataRegistrar : AppLifecycleListener, DynamicPluginListener {
    override fun appFrameCreated(commandLineArgs: List<String>) {
        ensureQoiRegistered()
    }

    override fun pluginLoaded(pluginDescriptor: IdeaPluginDescriptor) {
        ensureQoiRegistered()
    }

    override fun beforePluginUnload(pluginDescriptor: IdeaPluginDescriptor, isUpdate: Boolean) {
        val defaultInstance = IIORegistry.getDefaultInstance()
        defaultInstance.deregisterServiceProvider(IMAGE_READER_PROVIDER, ImageReaderSpi::class.java)
        defaultInstance.deregisterServiceProvider(IMAGE_WRITER_PROVIDER, ImageWriterSpi::class.java)
    }

    companion object {
        private val IMAGE_READER_PROVIDER: ImageReaderSpi = BLPReaderSpi()
        private val IMAGE_WRITER_PROVIDER: ImageWriterSpi = BLPWriterSpi()

        fun ensureQoiRegistered() {
            val defaultInstance = IIORegistry.getDefaultInstance()
            defaultInstance.registerServiceProvider(IMAGE_READER_PROVIDER, ImageReaderSpi::class.java)
            defaultInstance.registerServiceProvider(IMAGE_WRITER_PROVIDER, ImageWriterSpi::class.java)
        }
    }
}
