package guru.xgm.language.angelscript.lang.annotation;

import com.intellij.codeInspection.ProblemHighlightType;
import com.intellij.lang.annotation.AnnotationHolder;
import com.intellij.lang.annotation.Annotator;
import com.intellij.lang.annotation.HighlightSeverity;
import com.intellij.openapi.util.TextRange;
import com.intellij.psi.PsiElement;
import guru.xgm.language.angelscript.openapi.fileTypes.AngelScriptSyntaxHighlighterBase;
import guru.xgm.language.angelscript.psi.AngelScriptStr;
import guru.xgm.language.angelscript.psi.AngelScriptType;
import org.jetbrains.annotations.NotNull;

final class AngelScriptAnnotator implements Annotator {
    @Override
    public void annotate(@NotNull final PsiElement element, @NotNull AnnotationHolder holder) {
        final var textRange = element.getTextRange();

        if (element instanceof AngelScriptType) {
            holder
                    .newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(textRange)
                    .textAttributes(AngelScriptSyntaxHighlighterBase.TYPE_NAME_KEY).create();
            return;
        }

        if (element instanceof AngelScriptStr str) {
            final var text = str.getText();

            int s = 1;
            int e = text.length() - 2;
            if (e <= s) return;
            while (s < e) {
                s = text.indexOf("\\", s + 1);
                if (s < 0) break;
                final var c = text.substring(s + 1, s + 2);

                final var tr = new TextRange(textRange.getStartOffset() + s, textRange.getStartOffset() + s + 2);
                switch (c) {
                    case "0":
                    case "\\":
                    case "'":
                    case "\"":
                    case "n":
                    case "r":
                    case "t":
                        holder
                                .newSilentAnnotation(HighlightSeverity.INFORMATION)
                                .range(tr)
                                .textAttributes(AngelScriptSyntaxHighlighterBase.KEYWORD_KEY).create();
                        s += 1;
                        break;
                    default:
                        holder.newAnnotation(HighlightSeverity.ERROR, "Invalid escape sequence")
                                .range(tr)
                                .highlightType(ProblemHighlightType.LIKE_UNKNOWN_SYMBOL)
                                .create();
                }

            }
        }
    }
}
