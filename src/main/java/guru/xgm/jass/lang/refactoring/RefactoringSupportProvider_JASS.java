package guru.xgm.jass.lang.refactoring;

import com.intellij.lang.refactoring.RefactoringSupportProvider;
import com.intellij.psi.PsiElement;
import guru.xgm.jass.psi.JASS_Property;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

final class RefactoringSupportProvider_JASS extends RefactoringSupportProvider {

    @Override
    public boolean isMemberInplaceRenameAvailable(@NotNull PsiElement elementToRename, @Nullable PsiElement context) {
        return (elementToRename instanceof JASS_Property);
    }
}
