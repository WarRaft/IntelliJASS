package guru.xgm.jgas.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.jgas.lang.Language_JGAS;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class IElementType_Token_JGAS extends IElementType {

    public IElementType_Token_JGAS(@NotNull @NonNls String debugName) {
        super(debugName, Language_JGAS.INSTANCE);
    }
}
