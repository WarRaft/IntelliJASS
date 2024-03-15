package guru.xgm.language.vjass.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.language.vjass.lang.VjassLanguage;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class VjassIElement extends IElementType {

    public VjassIElement(@NotNull @NonNls String debugName) {
        super(debugName, VjassLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "VjassIElement." + super.toString();
    }
}
