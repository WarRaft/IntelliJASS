package guru.xgm.jgas.ide.navigationToolbar;

import com.intellij.icons.AllIcons;
import com.intellij.ide.navigationToolbar.StructureAwareNavBarModelExtension;
import com.intellij.lang.Language;
import guru.xgm.jgas.lang.Language_JGAS;
import guru.xgm.jgas.extapi.psi.PsiFileBase_JGAS;
import guru.xgm.jgas.psi.JGAS_Property;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;

final class StructureAwareNavBarModelExtension_vJGAS extends StructureAwareNavBarModelExtension {

    @NotNull
    @Override
    protected Language getLanguage() {
        return Language_JGAS.INSTANCE;
    }

    @Override
    public @Nullable String getPresentableText(Object object) {
        if (object instanceof PsiFileBase_JGAS) {
            return ((PsiFileBase_JGAS) object).getName();
        }
        if (object instanceof JGAS_Property) {
            return ((JGAS_Property) object).getName();
        }

        return null;
    }

    @Override
    @Nullable
    public Icon getIcon(Object object) {
        if (object instanceof JGAS_Property) {
            return AllIcons.Nodes.Property;
        }

        return null;
    }

}
