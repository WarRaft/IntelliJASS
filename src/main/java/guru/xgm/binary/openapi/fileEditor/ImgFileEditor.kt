package guru.xgm.binary.openapi.fileEditor

import com.intellij.openapi.fileEditor.FileEditor
import com.intellij.openapi.fileEditor.FileEditorState
import com.intellij.openapi.util.Key
import com.intellij.openapi.vfs.VirtualFile
import com.intellij.ui.components.JBScrollPane
import com.intellij.util.ui.ImageUtil
import java.awt.GridBagConstraints
import java.awt.GridBagLayout
import java.awt.image.BufferedImage
import java.beans.PropertyChangeListener
import javax.swing.*

class ImgFileEditor(file: VirtualFile) : FileEditor {

    private var myFile = file
    private val scrollPane: JScrollPane

    init {
        print(file.extension)
        val constraints = GridBagConstraints().apply {
            gridx = 0
            gridy = 0
            weightx = 1.0
            weighty = 1.0
            anchor = GridBagConstraints.CENTER
            fill = GridBagConstraints.CENTER
        }
        val panel = JPanel(GridBagLayout())

        scrollPane = JBScrollPane(panel)

        val image = ImageUtil.createImage(1, 1, BufferedImage.TYPE_INT_RGB)

        panel.add(JLabel(ImageIcon(image)), constraints)
    }

    override fun getComponent(): JComponent = scrollPane

    override fun getPreferredFocusedComponent(): JComponent = scrollPane

    override fun <T : Any?> getUserData(key: Key<T>): T? = null

    override fun <T : Any?> putUserData(key: Key<T>, value: T?) {}

    override fun dispose() {}

    override fun getName(): String = "ImgViewer"

    override fun setState(state: FileEditorState) {}

    override fun isModified(): Boolean = false

    override fun isValid(): Boolean = true

    override fun addPropertyChangeListener(listener: PropertyChangeListener) {}

    override fun removePropertyChangeListener(listener: PropertyChangeListener) {}

    override fun getFile(): VirtualFile {
        return myFile;
    }
}
