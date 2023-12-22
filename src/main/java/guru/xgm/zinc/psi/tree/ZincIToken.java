package guru.xgm.zinc.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.lang.JassLanguage;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class ZincIToken extends IElementType {

    public ZincIToken(@NotNull @NonNls String debugName) {
        super(debugName, JassLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "ZincIElement." + super.toString();
    }
}
