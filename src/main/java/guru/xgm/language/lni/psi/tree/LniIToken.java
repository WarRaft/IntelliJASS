package guru.xgm.language.lni.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.language.lni.lang.LniLanguage;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class LniIToken extends IElementType {

    public LniIToken(@NotNull @NonNls String debugName) {
        super(debugName, LniLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "LniIToken." + super.toString();
    }
}
