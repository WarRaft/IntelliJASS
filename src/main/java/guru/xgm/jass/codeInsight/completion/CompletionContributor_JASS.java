package guru.xgm.jass.codeInsight.completion;

import com.intellij.codeInsight.completion.*;
import com.intellij.codeInsight.lookup.LookupElementBuilder;
import com.intellij.patterns.PlatformPatterns;
import com.intellij.util.ProcessingContext;
import guru.xgm.jass.psi.Types_JASS;
import org.jetbrains.annotations.NotNull;

final class CompletionContributor_JASS extends CompletionContributor {

    CompletionContributor_JASS() {
        extend(CompletionType.BASIC, PlatformPatterns.psiElement(Types_JASS.VALUE),
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
