package guru.xgm.jgas.psi.tree;

import guru.xgm.jgas.lang.Language_JGAS;
import com.intellij.psi.tree.IElementType;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class IElementType_Element_JGAS extends IElementType {

    public IElementType_Element_JGAS(@NotNull @NonNls String debugName) {
        super(debugName, Language_JGAS.INSTANCE);
    }

    @Override
    public String toString() {
        return "IElementType_Element_JGAS." + super.toString();
    }
}
