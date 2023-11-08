package guru.xgm.jass.codeInsight.completion;

import com.intellij.codeInsight.completion.*;
import com.intellij.codeInsight.lookup.LookupElementBuilder;
import com.intellij.patterns.PlatformPatterns;
import com.intellij.util.ProcessingContext;
import org.intellij.sdk.language.jass.psi.JassTypes;
import org.jetbrains.annotations.NotNull;

final class CompletionContributor_JASS extends CompletionContributor {

    CompletionContributor_JASS() {
        extend(CompletionType.BASIC, PlatformPatterns.psiElement(JassTypes.VALUE),
                new CompletionProvider<>() {
                    public void addCompletions(@NotNull CompletionParameters parameters,
                                               @NotNull ProcessingContext context,
                                               @NotNull CompletionResultSet resultSet) {
                        resultSet.addElement(LookupElementBuilder.create("Hello"));
                    }
                }
        );
    }

}
