package guru.xgm.jass.openapi.actionSystem.convert;

import com.intellij.openapi.actionSystem.ActionUpdateThread;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import com.intellij.openapi.command.WriteCommandAction;
import com.intellij.openapi.fileEditor.FileEditorManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.ui.Messages;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.PsiFile;
import com.intellij.psi.PsiManager;
import guru.xgm.jass.lang.JassLanguage;
import org.jetbrains.annotations.NotNull;

import java.io.File;
import java.io.IOException;

public abstract class Jass2AnyAction extends AnAction {

    public abstract @NotNull Jass2AnyVisitor getVisitor();


    public abstract @NotNull String getTargetExtension();

    @Override
    public @NotNull ActionUpdateThread getActionUpdateThread() {
        return ActionUpdateThread.BGT;
    }

    public void update(AnActionEvent e) {
        VirtualFile virtualFile = e.getData(CommonDataKeys.VIRTUAL_FILE);
        e.getPresentation().setEnabledAndVisible(virtualFile != null && "j".equals(virtualFile.getExtension()));
    }

    @Override
    public void actionPerformed(@NotNull AnActionEvent e) {
        VirtualFile virtualFile = e.getData(CommonDataKeys.VIRTUAL_FILE);
        Project project = e.getData(CommonDataKeys.PROJECT);
        if (project == null || virtualFile == null) {
            Messages.showMessageDialog(project, "Project or File error!", "Error", Messages.getErrorIcon());
            return;
        }

        PsiManager psiManager = PsiManager.getInstance(project);

        PsiFile psiFile = psiManager.findFile(virtualFile);
        Jass2AnyVisitor visitor = getVisitor();

        if (psiFile != null) {
            if (!(psiFile.getLanguage() instanceof JassLanguage)) {
                Messages.showMessageDialog(project, "The file is not recognized as JASS. This happens most often when the IDE limits the file size.", "Error", Messages.getErrorIcon());
                return;
            }
            psiFile.acceptChildren(visitor);

        }

        // create file
        String filePath = virtualFile.getPath() + getTargetExtension();
        File file = new File(filePath);

        boolean success = true;

        if (!file.exists()) {
            try {
                success = file.createNewFile();
            } catch (IOException ex) {
                throw new RuntimeException(ex);
            }
        }

        if (!success) {
            Messages.showMessageDialog(project, "Create file error!", "Error", Messages.getErrorIcon());
            return;
        }
        VirtualFile newVirtualFile = LocalFileSystem.getInstance().refreshAndFindFileByIoFile(file);
        if (newVirtualFile == null) {
            Messages.showMessageDialog(project, "Create virtual file error!", "Error", Messages.getErrorIcon());
            return;
        }

        // write file
        WriteCommandAction.runWriteCommandAction(project, () -> {
                    try {
                        newVirtualFile.setBinaryContent(visitor.stringBuffer.toString().getBytes());
                    } catch (IOException ex) {
                        throw new RuntimeException(ex);
                    }
                }
        );

        FileEditorManager.getInstance(project).openFile(newVirtualFile, true);
    }


}
