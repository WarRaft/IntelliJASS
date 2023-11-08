package guru.xgm.jass.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.lang.Language_JASS;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class IElementType_Token_JASS extends IElementType {

    public IElementType_Token_JASS(@NotNull @NonNls String debugName) {
        super(debugName, Language_JASS.INSTANCE);
    }
}
