package guru.xgm.angelscript.lang.annotation;

import com.intellij.lang.annotation.AnnotationHolder;
import com.intellij.lang.annotation.Annotator;
import com.intellij.lang.annotation.HighlightSeverity;
import com.intellij.psi.PsiElement;
import guru.xgm.angelscript.openapi.fileTypes.ZincSyntaxHighlighterBase;
import guru.xgm.angelscript.psi.ZincTypeName;
import org.jetbrains.annotations.NotNull;

final class ZincAnnotator implements Annotator {
    @Override
    public void annotate(@NotNull final PsiElement element, @NotNull AnnotationHolder holder) {

        if (element instanceof ZincTypeName type) {
            holder
                    .newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(type.getTextRange())
                    .textAttributes(ZincSyntaxHighlighterBase.TYPE_NAME_KEY).create();
        }
    }
}
