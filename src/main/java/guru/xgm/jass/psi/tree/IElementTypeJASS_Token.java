package guru.xgm.jass.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.lang.LanguageJASS;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class IElementTypeJASS_Token extends IElementType {

    public IElementTypeJASS_Token(@NotNull @NonNls String debugName) {
        super(debugName, LanguageJASS.INSTANCE);
    }
}
