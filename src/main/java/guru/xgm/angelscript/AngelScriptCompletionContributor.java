package guru.xgm.angelscript;

import com.intellij.codeInsight.completion.*;
import com.intellij.codeInsight.lookup.LookupElementBuilder;
import com.intellij.patterns.PlatformPatterns;
import com.intellij.psi.PsiFile;
import com.intellij.util.ProcessingContext;
import guru.xgm.angelscript.psi.AngelScriptElementType;
import guru.xgm.angelscript.psi.AngelScriptElementTypes;
import guru.xgm.angelscript.psi.AngelScriptTokenType;
import org.jetbrains.annotations.NotNull;

public class AngelScriptCompletionContributor extends CompletionContributor {

    public AngelScriptCompletionContributor() {
        extend(CompletionType.BASIC, PlatformPatterns.psiElement(AngelScriptElementTypes.T_IDENT),
                new CompletionProvider<>() {
                    public void addCompletions(@NotNull CompletionParameters parameters,
                                               @NotNull ProcessingContext context,
                                               @NotNull CompletionResultSet resultSet) {
                        PsiFile file = parameters.getOriginalFile();
                        for (String s : AngelScriptUtil.findVars(file)) {
                            resultSet.addElement(LookupElementBuilder.create(s));
                        }
                    }
                }
        );
    }

}
