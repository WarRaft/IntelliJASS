package guru.xgm.language.angelscript.lang.annotation;

import com.intellij.lang.annotation.AnnotationHolder;
import com.intellij.lang.annotation.Annotator;
import com.intellij.lang.annotation.HighlightSeverity;
import com.intellij.psi.PsiElement;
import guru.xgm.language.angelscript.openapi.fileTypes.AngelScriptSyntaxHighlighterBase;
import guru.xgm.angelscript.psi.AngelScriptType;
import org.jetbrains.annotations.NotNull;

final class AngelScriptAnnotator implements Annotator {
    @Override
    public void annotate(@NotNull final PsiElement element, @NotNull AnnotationHolder holder) {

        if (element instanceof AngelScriptType type) {
            holder
                    .newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(type.getTextRange())
                    .textAttributes(AngelScriptSyntaxHighlighterBase.TYPE_NAME_KEY).create();
        }
    }
}
