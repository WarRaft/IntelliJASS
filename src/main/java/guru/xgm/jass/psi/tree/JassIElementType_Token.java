package guru.xgm.jass.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.lang.JassLanguage;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class JassIElementType_Token extends IElementType {

    public JassIElementType_Token(@NotNull @NonNls String debugName) {
        super(debugName, JassLanguage.INSTANCE);
    }
}
