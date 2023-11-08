package guru.xgm.jgas.ide;

import com.intellij.ide.IconProvider;
import com.intellij.psi.PsiElement;
import guru.xgm.jgas.openapi.util.Icons_JGAS;
import guru.xgm.jgas.psi.JGAS_Property;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;

final class IconProvider_vJGAS extends IconProvider {
    @Override
    public @Nullable Icon getIcon(@NotNull PsiElement element, int flags) {
        return element instanceof JGAS_Property ? Icons_JGAS.FILE : null;
    }
}
