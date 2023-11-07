package org.intellij.sdk.language.jass;

import com.intellij.codeInsight.completion.*;
import com.intellij.codeInsight.lookup.LookupElementBuilder;
import com.intellij.patterns.PlatformPatterns;
import com.intellij.util.ProcessingContext;
import org.intellij.sdk.language.jass.psi.JassTypes;
import org.jetbrains.annotations.NotNull;

final class JassCompletionContributor extends CompletionContributor {

    JassCompletionContributor() {
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
