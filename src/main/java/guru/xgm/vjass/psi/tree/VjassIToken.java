package guru.xgm.vjass.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.vjass.lang.VjassLanguage;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class VjassIToken extends IElementType {

    public VjassIToken(@NotNull @NonNls String debugName) {
        super(debugName, VjassLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "VjassIToken." + super.toString();
    }
}
