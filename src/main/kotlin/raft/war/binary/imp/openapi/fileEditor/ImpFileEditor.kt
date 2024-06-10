package raft.war.binary.imp.openapi.fileEditor

import com.intellij.codeHighlighting.BackgroundEditorHighlighter
import com.intellij.codeInsight.daemon.impl.TextEditorBackgroundHighlighter
import com.intellij.openapi.editor.Editor
import com.intellij.openapi.editor.EditorFactory
import com.intellij.openapi.editor.ex.EditorEx
import com.intellij.openapi.editor.highlighter.EditorHighlighter
import com.intellij.openapi.editor.highlighter.EditorHighlighterFactory
import com.intellij.openapi.fileEditor.*
import com.intellij.openapi.fileTypes.SyntaxHighlighterFactory
import com.intellij.openapi.project.Project
import com.intellij.openapi.util.Key
import com.intellij.openapi.util.UserDataHolderBase
import com.intellij.openapi.vfs.VirtualFile
import raft.war.language.lni.openapi.fileTypes.LniFileType
import java.beans.PropertyChangeListener
import javax.swing.JComponent


// EditorTextEditor

// https://plugins.jetbrains.com/docs/intellij/editor-components.html#providing-completion
class ImpFileEditor(project: Project, private val file: VirtualFile) : UserDataHolderBase(), FileEditor {

    //private val scrollPane: JScrollPane
    private val editor: EditorEx

    init {
        //print(file.extension)
        /*
        val panel = JPanel()
        panel.layout = BoxLayout(panel, BoxLayout.Y_AXIS)
        //panel.border = JBUI.Borders.empty(10)

        val l = JLabel("U")
        l.isOpaque = true
        l.background = JBColor.CYAN
        l.maximumSize = Dimension(Int.MAX_VALUE, l.preferredSize.height)
        l.border = JBUI.Borders.empty(10)


        panel.add(l)
        panel.add(JLabel("I"))

        scrollPane = JBScrollPane(panel)
         */

        val factory = EditorFactory.getInstance()

        val document = factory.createDocument(loadFileContent(file))
        editor = factory.createEditor(document, project, LniFileType.instance, false) as EditorEx
    }

    private fun loadFileContent(file: VirtualFile): String {
        return "import = {\n" +
                "\"characters\\\\akainu\\\\akainu.mdx\",\n" +
                "\"characters\\\\akainu\\\\akainu_portrait.mdx\",\n" +
                "\"characters\\\\akainu\\\\akainubody.blp\",\n}"

        /*
        return try {
            val bytes = file.contentsToByteArray()
            val sb = StringBuilder()
            for (b in bytes) {
                sb.append(String.format("%02X ", b))
            }
            sb.toString()
        } catch (e: IOException) {
            "Failed to load file: ${e.message}"
        }
         */
    }


    override fun getBackgroundHighlighter(): BackgroundEditorHighlighter? {
        return editor.project?.let { TextEditorBackgroundHighlighter(it, editor) }
    }

    override fun dispose() = EditorFactory.getInstance().releaseEditor(editor)

    override fun getComponent(): JComponent = editor.component

    override fun getPreferredFocusedComponent(): JComponent = editor.contentComponent

    override fun <T : Any?> getUserData(key: Key<T>): T? = null

    override fun <T : Any?> putUserData(key: Key<T>, value: T?) {}

    override fun getName(): String = BinaryFileEditorProvider.ID

    override fun setState(state: FileEditorState) {}

    override fun getState(level: FileEditorStateLevel): FileEditorState = FileEditorState.INSTANCE

    override fun isModified(): Boolean = false

    override fun isValid(): Boolean = true

    override fun addPropertyChangeListener(listener: PropertyChangeListener) {}

    override fun removePropertyChangeListener(listener: PropertyChangeListener) {}

    override fun getFile(): VirtualFile = file
}
