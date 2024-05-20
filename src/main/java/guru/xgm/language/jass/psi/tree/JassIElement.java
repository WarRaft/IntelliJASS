package guru.xgm.language.jass.psi.tree;

import guru.xgm.language.jass.lang.JassLanguage;

import com.intellij.psi.tree.IElementType;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class JassIElement extends IElementType {

    public JassIElement(@NotNull @NonNls String debugName) {
        super(debugName, JassLanguage.Companion.getInstance());
    }

    @Override
    public String toString() {
        return "JassIElement." + super.toString();
    }
}
