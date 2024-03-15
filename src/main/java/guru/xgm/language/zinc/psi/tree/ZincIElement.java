package guru.xgm.language.zinc.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.language.zinc.lang.ZincLanguage;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class ZincIElement extends IElementType {

    public ZincIElement(@NotNull @NonNls String debugName) {
        super(debugName, ZincLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "ZincIElement." + super.toString();
    }
}
