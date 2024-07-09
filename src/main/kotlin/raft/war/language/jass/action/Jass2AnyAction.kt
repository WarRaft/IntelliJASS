package raft.war.language.jass.action

import com.intellij.openapi.actionSystem.ActionUpdateThread
import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.actionSystem.CommonDataKeys
import com.intellij.openapi.command.WriteCommandAction
import com.intellij.openapi.fileEditor.FileEditorManager
import com.intellij.openapi.ui.Messages
import com.intellij.openapi.vfs.LocalFileSystem
import com.intellij.psi.PsiManager
import raft.war.language.jass.JassLanguage
import raft.war.language.jass.JassFileType
import java.io.File
import java.io.IOException
import java.nio.file.FileSystems

abstract class Jass2AnyAction : AnAction() {
    abstract val visitor: Jass2AnyVisitor


    abstract val targetExtension: String

    override fun getActionUpdateThread(): ActionUpdateThread {
        return ActionUpdateThread.BGT
    }

    override fun update(e: AnActionEvent) {
        val virtualFile = e.getData(CommonDataKeys.VIRTUAL_FILE)
        e.presentation.isEnabledAndVisible = virtualFile != null && JassFileType.EXTENSION == virtualFile.extension
    }

    override fun actionPerformed(e: AnActionEvent) {
        val virtualFile = e.getData(CommonDataKeys.VIRTUAL_FILE)
        val project = e.getData(CommonDataKeys.PROJECT)
        if (project == null || virtualFile == null) {
            Messages.showMessageDialog(project, "Project or File error!", "Error", Messages.getErrorIcon())
            return
        }

        val psiManager = PsiManager.getInstance(project)

        val psiFile = psiManager.findFile(virtualFile)
        val visitor = visitor

        if (psiFile != null) {
            if (psiFile.language !is JassLanguage) {
                Messages.showMessageDialog(
                    project,
                    "The file is not recognized as JASS. This happens most often when the IDE limits the file size.",
                    "Error",
                    Messages.getErrorIcon()
                )
                return
            }
            psiFile.acceptChildren(visitor)
        }

        // create file
        val separator = FileSystems.getDefault().separator
        val filePath = virtualFile.parent.path + separator + virtualFile.nameWithoutExtension + "." + targetExtension
        val file = File(filePath)

        var success = true

        if (!file.exists()) {
            try {
                success = file.createNewFile()
            } catch (ex: IOException) {
                throw RuntimeException(ex)
            }
        }

        if (!success) {
            Messages.showMessageDialog(project, "Create file error!", "Error", Messages.getErrorIcon())
            return
        }
        val newVirtualFile = LocalFileSystem.getInstance().refreshAndFindFileByIoFile(file)
        if (newVirtualFile == null) {
            Messages.showMessageDialog(project, "Create virtual file error!", "Error", Messages.getErrorIcon())
            return
        }

        // write file
        WriteCommandAction.runWriteCommandAction(
            project
        ) {
            try {
                newVirtualFile.setBinaryContent(visitor.stringBuffer.toString().toByteArray())
            } catch (ex: IOException) {
                throw RuntimeException(ex)
            }
        }

        FileEditorManager.getInstance(project).openFile(newVirtualFile, true)
    }
}
