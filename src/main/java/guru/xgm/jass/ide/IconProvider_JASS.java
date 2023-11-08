package guru.xgm.jass.ide;

import com.intellij.ide.IconProvider;
import com.intellij.psi.PsiElement;
import guru.xgm.jass.openapi.util.Icons_JASS;
import org.intellij.sdk.language.jass.psi.JassProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;

final class IconProvider_JASS extends IconProvider {
    @Override
    public @Nullable Icon getIcon(@NotNull PsiElement element, int flags) {
        return element instanceof JassProperty ? Icons_JASS.FILE : null;
    }
}
