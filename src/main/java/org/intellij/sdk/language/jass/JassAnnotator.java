package org.intellij.sdk.language.jass;

import com.intellij.codeInspection.ProblemHighlightType;
import com.intellij.lang.annotation.AnnotationHolder;
import com.intellij.lang.annotation.Annotator;
import com.intellij.lang.annotation.HighlightSeverity;
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors;
import com.intellij.openapi.util.TextRange;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiLiteralExpression;
import org.intellij.sdk.language.jass.psi.JassProperty;
import org.jetbrains.annotations.NotNull;

import java.util.List;

final class JassAnnotator implements Annotator {

    // Define strings for the Jass language prefix - used for annotations, line markers, etc.
    public static final String SIMPLE_PREFIX_STR = "jass";
    public static final String SIMPLE_SEPARATOR_STR = ":";

    @Override
    public void annotate(@NotNull final PsiElement element, @NotNull AnnotationHolder holder) {
        // Ensure the PSI Element is an expression
        if (!(element instanceof PsiLiteralExpression literalExpression)) return;

        // Ensure the Psi element contains a string that starts with the prefix and separator
        String value = literalExpression.getValue() instanceof String ? (String) literalExpression.getValue() : null;
        if (value == null || !value.startsWith(SIMPLE_PREFIX_STR + SIMPLE_SEPARATOR_STR)) return;

        // Define the text ranges (start is inclusive, end is exclusive)
        // "simple:key"
        //  01234567890
        TextRange prefixRange = TextRange.from(element.getTextRange().getStartOffset(), SIMPLE_PREFIX_STR.length() + 1);
        TextRange separatorRange = TextRange.from(prefixRange.getEndOffset(), SIMPLE_SEPARATOR_STR.length());
        TextRange keyRange = new TextRange(separatorRange.getEndOffset(), element.getTextRange().getEndOffset() - 1);

        // highlight "simple" prefix and ":" separator
        holder.newSilentAnnotation(HighlightSeverity.INFORMATION)
                .range(prefixRange).textAttributes(DefaultLanguageHighlighterColors.KEYWORD).create();
        holder.newSilentAnnotation(HighlightSeverity.INFORMATION)
                .range(separatorRange).textAttributes(JassSyntaxHighlighter.SEPARATOR).create();


        // Get the list of properties for given key
        String key = value.substring(SIMPLE_PREFIX_STR.length() + SIMPLE_SEPARATOR_STR.length());
        List<JassProperty> properties = JassUtil.findProperties(element.getProject(), key);
        if (properties.isEmpty()) {
            holder.newAnnotation(HighlightSeverity.ERROR, "Unresolved property")
                    .range(keyRange)
                    .highlightType(ProblemHighlightType.LIKE_UNKNOWN_SYMBOL)
                    // ** Tutorial step 19. - Add a quick fix for the string containing possible properties
                    .withFix(new JassCreatePropertyQuickFix(key))
                    .create();
        } else {
            // Found at least one property, force the text attributes to Jass syntax value character
            holder.newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(keyRange).textAttributes(JassSyntaxHighlighter.VALUE).create();
        }
    }

}
