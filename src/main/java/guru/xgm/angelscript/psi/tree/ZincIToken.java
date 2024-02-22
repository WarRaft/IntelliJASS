package guru.xgm.angelscript.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.angelscript.lang.ZincLanguage;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class ZincIToken extends IElementType {

    public ZincIToken(@NotNull @NonNls String debugName) {
        super(debugName, ZincLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "ZincIToken." + super.toString();
    }
}
