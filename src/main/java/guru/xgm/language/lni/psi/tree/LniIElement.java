package guru.xgm.language.lni.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.language.lni.lang.LniLanguage;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class LniIElement extends IElementType {

    public LniIElement(@NotNull @NonNls String debugName) {
        super(debugName, LniLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "LniIElement." + super.toString();
    }
}
