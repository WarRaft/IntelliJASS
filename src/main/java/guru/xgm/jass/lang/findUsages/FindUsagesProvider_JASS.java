package guru.xgm.jass.lang.findUsages;

import com.intellij.lang.cacheBuilder.DefaultWordsScanner;
import com.intellij.lang.cacheBuilder.WordsScanner;
import com.intellij.lang.findUsages.FindUsagesProvider;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiNamedElement;
import com.intellij.psi.tree.TokenSet;
import guru.xgm.jass.lang.annotation.Annotator_JASS;
import guru.xgm.jass.psi.TokenSets_JASS;
import guru.xgm.jass.lexer.FlexAdapter_JASS;
import org.intellij.sdk.language.jass.psi.JassProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

final class FindUsagesProvider_JASS implements FindUsagesProvider {

    @Override
    public @NotNull WordsScanner getWordsScanner() {
        return new DefaultWordsScanner(new FlexAdapter_JASS(),
                TokenSets_JASS.IDENTIFIERS,
                TokenSets_JASS.COMMENTS,
                TokenSet.EMPTY);
    }

    @Override
    public boolean canFindUsagesFor(@NotNull PsiElement psiElement) {
        return psiElement instanceof PsiNamedElement;
    }

    @Nullable
    @Override
    public String getHelpId(@NotNull PsiElement psiElement) {
        return null;
    }

    @NotNull
    @Override
    public String getType(@NotNull PsiElement element) {
        if (element instanceof JassProperty) {
            return "jass property";
        }
        return "";
    }

    @NotNull
    @Override
    public String getDescriptiveName(@NotNull PsiElement element) {
        if (element instanceof JassProperty) {
            return ((JassProperty) element).getKey();
        }
        return "";
    }

    @NotNull
    @Override
    public String getNodeText(@NotNull PsiElement element, boolean useFullName) {
        if (element instanceof JassProperty) {
            return ((JassProperty) element).getKey() +
                    Annotator_JASS.SIMPLE_SEPARATOR_STR +
                    ((JassProperty) element).getValue();
        }
        return "";
    }

}
