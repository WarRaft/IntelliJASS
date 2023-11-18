package guru.xgm.jass.lang.annotation;

import com.intellij.lang.annotation.AnnotationHolder;
import com.intellij.lang.annotation.Annotator;
import com.intellij.lang.annotation.HighlightSeverity;
import com.intellij.psi.PsiElement;
import guru.xgm.jass.openapi.fileTypes.SyntaxHighlighterBaseJASS;
import guru.xgm.jass.psi.JASSTypeName;
import org.jetbrains.annotations.NotNull;

final class AnnotatorJASS implements Annotator {

    @Override
    public void annotate(@NotNull final PsiElement element, @NotNull AnnotationHolder holder) {

        if (element instanceof JASSTypeName type) {
            holder
                    .newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(type.getTextRange())
                    .textAttributes(SyntaxHighlighterBaseJASS.TYPE_NAME_KEY).create();
        }

        /*
        TextRange prefixRange = TextRange.from(element.getTextRange().getStartOffset(), SIMPLE_PREFIX_STR.length() + 1);
        TextRange separatorRange = TextRange.from(prefixRange.getEndOffset(), SIMPLE_SEPARATOR_STR.length());
        TextRange keyRange = new TextRange(separatorRange.getEndOffset(), element.getTextRange().getEndOffset() - 1);

        // highlight "simple" prefix and ":" separator

        holder.newSilentAnnotation(HighlightSeverity.INFORMATION)
                .range(separatorRange).textAttributes(SimpleSyntaxHighlighter.SEPARATOR).create();


        // Get the list of properties for given key
        String key = value.substring(SIMPLE_PREFIX_STR.length() + SIMPLE_SEPARATOR_STR.length());
        List<SimpleProperty> properties = SimpleUtil.findProperties(element.getProject(), key);
        if (properties.isEmpty()) {
            holder.newAnnotation(HighlightSeverity.ERROR, "Unresolved property")
                    .range(keyRange)
                    .highlightType(ProblemHighlightType.LIKE_UNKNOWN_SYMBOL)
                    // ** Tutorial step 19. - Add a quick fix for the string containing possible properties
                    .withFix(new SimpleCreatePropertyQuickFix(key))
                    .create();
        } else {
            // Found at least one property, force the text attributes to Simple syntax value character
            holder.newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(keyRange).textAttributes(SimpleSyntaxHighlighter.VALUE).create();
        }

         */
    }

}
