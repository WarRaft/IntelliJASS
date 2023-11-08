package guru.xgm.jass.ide.navigationToolbar;

import com.intellij.icons.AllIcons;
import com.intellij.ide.navigationToolbar.StructureAwareNavBarModelExtension;
import com.intellij.lang.Language;
import guru.xgm.jass.lang.Language_JASS;
import org.intellij.sdk.language.jass.psi.JassFile;
import org.intellij.sdk.language.jass.psi.JassProperty;
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
        if (object instanceof JassFile) {
            return ((JassFile) object).getName();
        }
        if (object instanceof JassProperty) {
            return ((JassProperty) object).getName();
        }

        return null;
    }

    @Override
    @Nullable
    public Icon getIcon(Object object) {
        if (object instanceof JassProperty) {
            return AllIcons.Nodes.Property;
        }

        return null;
    }

}
