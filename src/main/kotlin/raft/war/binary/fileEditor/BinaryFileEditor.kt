package raft.war.binary.fileEditor

import com.intellij.codeHighlighting.BackgroundEditorHighlighter
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.editor.EditorFactory
import com.intellij.openapi.editor.ex.EditorEx
import com.intellij.openapi.fileEditor.FileEditor
import com.intellij.openapi.fileEditor.FileEditorState
import com.intellij.openapi.fileEditor.FileEditorStateLevel
import com.intellij.openapi.project.Project
import com.intellij.openapi.util.Key
import com.intellij.openapi.util.UserDataHolderBase
import com.intellij.openapi.vfs.VirtualFile
import com.intellij.psi.PsiFile
import com.intellij.psi.PsiFileFactory
import com.intellij.psi.codeStyle.CodeStyleManager
import com.intellij.testFramework.LightVirtualFile
import raft.war.binary.parser.Parser
import raft.war.binary.parser.w3g.W3g
import raft.war.binary.parser.w3g.commandBlock.CommandBlockParser
import raft.war.binary.parser.w3g.record.TimeSlotRecord
import raft.war.language.lni.openapi.fileTypes.LniFileType
import java.beans.PropertyChangeListener
import java.nio.ByteBuffer
import java.nio.ByteOrder
import javax.swing.JComponent

// https://plugins.jetbrains.com/docs/intellij/editor-components.html#providing-completion
class BinaryFileEditor(project: Project, private val file: VirtualFile) : UserDataHolderBase(), FileEditor {

    //private val scrollPane: JScrollPane
    private val editor: EditorEx

    init {
        val factory = EditorFactory.getInstance()

        if (file.extension == "w3g") {
            val sb = StringBuilder()
            val w3g = W3g()

            w3g.parse(file.contentsToByteArray())

            sb.append("=".repeat(20)).append(" Header").append("\n")
            sb.append("Version: ").append(w3g.header.version).append("\n")

            sb.append("=".repeat(20)).append(" SubHeader").append("\n")
            sb.append("Version: ").append(w3g.subheader.version).append("\n")

            val commandBlockParser = CommandBlockParser()

            sb.append("=".repeat(20)).append(" Records").append("\n")
            w3g.records.forEach { record ->
                sb.append("$record\n")
                if (record is TimeSlotRecord) {
                    //sb.append("Time: ${record.time} \n")
                    val blocks =
                        commandBlockParser.parse(ByteBuffer.wrap(record.rawData).order(ByteOrder.LITTLE_ENDIAN))
                    for (block in blocks) {
                        sb.append("\t Player Id: ${block.playerId} \n")

                        block.actions.forEach { a ->
                            sb.append("\t\t ID: ${a.actionId()},\t$a\n")
                        }
                    }
                }
            }

            val document = factory.createDocument(sb.toString())
            editor = factory.createEditor(document, project) as EditorEx
        } else {
            val document = factory.createDocument(loadFileContent(project, file))
            editor = factory.createEditor(document, project, LniFileType.instance, false) as EditorEx
        }
    }

    private fun loadFileContent(project: Project, file: VirtualFile): String {

        val bytes = file.contentsToByteArray()

        if (file.extension == null) {
            val sb = StringBuilder()
            for (b in bytes) {
                sb.append(String.format("%02X ", b))
            }
            return sb.toString()
        }

        var s: String

        try {
            val p = Parser.fromExtension(file.extension!!, bytes)
            s = p.lni
        } catch (e: Exception) {
            s = "-- " + e.message.toString()
            e.printStackTrace()
        }


        val virtualFile: VirtualFile = LightVirtualFile("dummy.lni", LniFileType.instance, s)
        val psiFile: PsiFile =
            PsiFileFactory.getInstance(project).createFileFromText(virtualFile.name, LniFileType.instance, s)

        ApplicationManager.getApplication().runWriteAction {
            CodeStyleManager.getInstance(project).reformat(psiFile)
        }

        return psiFile.text
    }


    override fun getBackgroundHighlighter(): BackgroundEditorHighlighter? {
        //return editor.project?.let { TextEditorBackgroundHighlighter(it, editor) }
        return null
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
