package guru.xgm.jass.psi.tree;

import guru.xgm.jass.lang.Language_JASS;
import com.intellij.psi.tree.IElementType;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class IElementType_Element_JASS extends IElementType {

    public IElementType_Element_JASS(@NotNull @NonNls String debugName) {
        super(debugName, Language_JASS.INSTANCE);
    }

    @Override
    public String toString() {
        return "IElementType_Element_JASS." + super.toString();
    }
}
