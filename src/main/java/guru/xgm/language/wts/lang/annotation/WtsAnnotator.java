package guru.xgm.language.wts.lang.annotation;

import com.intellij.lang.annotation.AnnotationHolder;
import com.intellij.lang.annotation.Annotator;
import com.intellij.lang.annotation.HighlightSeverity;
import com.intellij.openapi.util.TextRange;
import com.intellij.psi.PsiElement;
import guru.xgm.language.jass.openapi.fileTypes.JassSyntaxHighlighterBase;
import org.jetbrains.annotations.NotNull;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static guru.xgm.language.wts.psi.WtsTypes.VALUE;

final class WtsAnnotator implements Annotator {

    @Override
    public void annotate(@NotNull final PsiElement element, @NotNull AnnotationHolder holder) {

        final var type = element.getNode().getElementType();
        if (type == VALUE) {
            final String text = element.getText();
            final int s = element.getTextOffset();

            // braces
            final int sa = s + text.indexOf("{");
            final int sb = s + text.indexOf("}");

            holder
                    .newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(new TextRange(sa, sa + 1))
                    .textAttributes(JassSyntaxHighlighterBase.LINE_COMMENT_KEY).create();

            holder
                    .newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(new TextRange(sb, sb + 1))
                    .textAttributes(JassSyntaxHighlighterBase.LINE_COMMENT_KEY).create();

            // |r
            for (int i = -1; (i = text.indexOf("|r", i + 1)) != -1; i++) {
                holder
                        .newSilentAnnotation(HighlightSeverity.INFORMATION)
                        .range(new TextRange(s + i, s + i + 2))
                        .textAttributes(JassSyntaxHighlighterBase.LINE_COMMENT_KEY).create();
            }

            // |n
            for (int i = -1; (i = text.indexOf("|n", i + 1)) != -1; i++) {
                holder
                        .newSilentAnnotation(HighlightSeverity.INFORMATION)
                        .range(new TextRange(s + i, s + i + 2))
                        .textAttributes(JassSyntaxHighlighterBase.LINE_COMMENT_KEY).create();
            }

            // color
            Pattern pattern = Pattern.compile("(\\|C[a-fA-F0-9]{8})");
            Matcher matcher = pattern.matcher(text);
            while (matcher.find()) {
                final int a = s + matcher.start();
                holder
                        .newSilentAnnotation(HighlightSeverity.INFORMATION)
                        .range(new TextRange(a, a + matcher.group().length()))
                        .textAttributes(JassSyntaxHighlighterBase.LINE_COMMENT_KEY).create();
            }

        }

    }

}
