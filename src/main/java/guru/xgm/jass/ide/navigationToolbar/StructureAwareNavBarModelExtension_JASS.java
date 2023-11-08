package guru.xgm.jass.ide.navigationToolbar;

import com.intellij.icons.AllIcons;
import com.intellij.ide.navigationToolbar.StructureAwareNavBarModelExtension;
import com.intellij.lang.Language;
import guru.xgm.jass.lang.Language_JASS;
import guru.xgm.jass.extapi.psi.PsiFileBase_JASS;
import guru.xgm.jass.psi.JASS_Property;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;

final class StructureAwareNavBarModelExtension_JASS extends StructureAwareNavBarModelExtension {

    @NotNull
    @Override
    protected Language getLanguage() {
        return Language_JASS.INSTANCE;
    }

    @Override
    public @Nullable String getPresentableText(Object object) {
        if (object instanceof PsiFileBase_JASS) {
            return ((PsiFileBase_JASS) object).getName();
        }
        if (object instanceof JASS_Property) {
            return ((JASS_Property) object).getName();
        }

        return null;
    }

    @Override
    @Nullable
    public Icon getIcon(Object object) {
        if (object instanceof JASS_Property) {
            return AllIcons.Nodes.Property;
        }

        return null;
    }

}
