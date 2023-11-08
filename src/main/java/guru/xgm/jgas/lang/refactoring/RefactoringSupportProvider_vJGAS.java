package guru.xgm.jgas.lang.refactoring;

import com.intellij.lang.refactoring.RefactoringSupportProvider;
import com.intellij.psi.PsiElement;
import guru.xgm.jgas.psi.JGAS_Property;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

final class RefactoringSupportProvider_vJGAS extends RefactoringSupportProvider {

    @Override
    public boolean isMemberInplaceRenameAvailable(@NotNull PsiElement elementToRename, @Nullable PsiElement context) {
        return (elementToRename instanceof JGAS_Property);
    }
}
