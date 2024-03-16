package guru.xgm.language.zinc.lang.annotation;

import com.intellij.lang.annotation.AnnotationHolder;
import com.intellij.lang.annotation.Annotator;
import com.intellij.lang.annotation.HighlightSeverity;
import com.intellij.psi.PsiElement;
import guru.xgm.language.zinc.openapi.fileTypes.ZincSyntaxHighlighterBase;
import guru.xgm.language.zinc.psi.ZincTypeName;
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
