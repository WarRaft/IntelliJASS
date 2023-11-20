package guru.xgm.jass.psi.tree;

import guru.xgm.jass.lang.JassLanguage;

import com.intellij.psi.tree.IElementType;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class JassIElementType_Element extends IElementType {

    public JassIElementType_Element(@NotNull @NonNls String debugName) {
        super(debugName, JassLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "IElementTypeJASS_Element." + super.toString();
    }
}