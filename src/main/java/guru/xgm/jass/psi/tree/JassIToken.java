package guru.xgm.jass.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.lang.JassLanguage;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class JassIToken extends IElementType {

    public JassIToken(@NotNull @NonNls String debugName) {
        super(debugName, JassLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "JassIToken." + super.toString();
    }
}
