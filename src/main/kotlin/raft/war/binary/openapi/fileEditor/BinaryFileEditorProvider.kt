package raft.war.binary.openapi.fileEditor

import com.intellij.openapi.fileEditor.FileEditor
import com.intellij.openapi.fileEditor.FileEditorPolicy
import com.intellij.openapi.fileEditor.FileEditorProvider
import com.intellij.openapi.fileEditor.FileEditorState
import com.intellij.openapi.project.DumbAware
import com.intellij.openapi.project.Project
import com.intellij.openapi.vfs.VirtualFile
import org.jdom.Element

class BinaryFileEditorProvider : FileEditorProvider, DumbAware {

    override fun accept(project: Project, file: VirtualFile): Boolean = file.extension in extensions

    override fun createEditor(project: Project, file: VirtualFile): FileEditor = BinaryFileEditor(project, file)

    override fun getEditorTypeId(): String = ID

    override fun getPolicy(): FileEditorPolicy = FileEditorPolicy.HIDE_DEFAULT_EDITOR

    override fun readState(sourceElement: Element, project: Project, file: VirtualFile): FileEditorState =
        FileEditorState.INSTANCE

    override fun writeState(state: FileEditorState, project: Project, targetElement: Element) {}

    companion object {
        const val ID = "Warcraft Binary File Editor"
    }
}

private val extensions = setOf("imp", "w3u")

//
