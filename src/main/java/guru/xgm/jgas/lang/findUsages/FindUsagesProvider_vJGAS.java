package guru.xgm.jgas.lang.findUsages;

import com.intellij.lang.cacheBuilder.DefaultWordsScanner;
import com.intellij.lang.cacheBuilder.WordsScanner;
import com.intellij.lang.findUsages.FindUsagesProvider;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiNamedElement;
import com.intellij.psi.tree.TokenSet;
import guru.xgm.jgas.lang.annotation.Annotator_JGAS;
import guru.xgm.jgas.psi.TokenSets_JGAS;
import guru.xgm.jgas.lexer.FlexAdapter_JGAS;
import guru.xgm.jgas.psi.JGAS_Property;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

final class FindUsagesProvider_vJGAS implements FindUsagesProvider {

    @Override
    public @NotNull WordsScanner getWordsScanner() {
        return new DefaultWordsScanner(new FlexAdapter_JGAS(),
                TokenSets_JGAS.IDENTIFIERS,
                TokenSets_JGAS.COMMENTS,
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
        if (element instanceof JGAS_Property) {
            return "jass property";
        }
        return "";
    }

    @NotNull
    @Override
    public String getDescriptiveName(@NotNull PsiElement element) {
        if (element instanceof JGAS_Property) {
            return ((JGAS_Property) element).getKey();
        }
        return "";
    }

    @NotNull
    @Override
    public String getNodeText(@NotNull PsiElement element, boolean useFullName) {
        if (element instanceof JGAS_Property) {
            return ((JGAS_Property) element).getKey() +
                    Annotator_JGAS.SIMPLE_SEPARATOR_STR +
                    ((JGAS_Property) element).getValue();
        }
        return "";
    }

}
