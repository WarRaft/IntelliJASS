package guru.xgm.binary.openapi.fileEditor

import com.intellij.openapi.fileEditor.FileEditor
import com.intellij.openapi.fileEditor.FileEditorPolicy
import com.intellij.openapi.fileEditor.FileEditorProvider
import com.intellij.openapi.fileEditor.FileEditorState
import com.intellij.openapi.project.DumbAware
import com.intellij.openapi.project.Project
import com.intellij.openapi.vfs.VirtualFile
import org.jdom.Element

class ImgFileEditorProvider : FileEditorProvider, DumbAware {

    override fun accept(project: Project, file: VirtualFile): Boolean {
        return file.extension == "blp"
    }

    override fun createEditor(project: Project, file: VirtualFile): FileEditor = ImgFileEditor(file)

    override fun disposeEditor(editor: FileEditor) = editor.dispose()

    override fun getEditorTypeId(): String = EDITOR_TYPE_ID

    override fun getPolicy(): FileEditorPolicy = FileEditorPolicy.HIDE_DEFAULT_EDITOR

    override fun readState(sourceElement: Element, project: Project, file: VirtualFile): FileEditorState =
        FileEditorState.INSTANCE

    override fun writeState(state: FileEditorState, project: Project, targetElement: Element) {}

    companion object {
        private const val EDITOR_TYPE_ID = "img"
    }

}
