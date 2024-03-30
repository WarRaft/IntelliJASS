package guru.xgm.language.wts.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.language.wts.lang.WtsLanguage;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class WtsIToken extends IElementType {

    public WtsIToken(@NotNull @NonNls String debugName) {
        super(debugName, WtsLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "WtsIToken." + super.toString();
    }
}
