package guru.xgm.jass.openapi.fileTypes;

import com.intellij.openapi.fileTypes.SyntaxHighlighter;
import com.intellij.openapi.fileTypes.SyntaxHighlighterFactory;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import org.intellij.sdk.language.jass.JassSyntaxHighlighter;
import org.jetbrains.annotations.NotNull;

final class SyntaxHighlighterFactory_JASS extends SyntaxHighlighterFactory {
    @NotNull
    @Override
    public SyntaxHighlighter getSyntaxHighlighter(Project project, VirtualFile virtualFile) {
        return new JassSyntaxHighlighter();
    }
}
