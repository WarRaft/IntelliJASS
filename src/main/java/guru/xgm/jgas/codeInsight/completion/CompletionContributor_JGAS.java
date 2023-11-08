package guru.xgm.jgas.codeInsight.completion;

import com.intellij.codeInsight.completion.*;
import com.intellij.codeInsight.lookup.LookupElementBuilder;
import com.intellij.patterns.PlatformPatterns;
import com.intellij.util.ProcessingContext;
import guru.xgm.jgas.psi.Types_JGAS;
import org.jetbrains.annotations.NotNull;

final class CompletionContributor_JGAS extends CompletionContributor {

    CompletionContributor_JGAS() {
        extend(CompletionType.BASIC, PlatformPatterns.psiElement(Types_JGAS.VALUE),
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
