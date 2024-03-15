package guru.xgm.language.angelscript.psi.tree;

import com.intellij.psi.tree.IElementType;
import guru.xgm.language.angelscript.lang.AngelScriptLanguage;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class AngelScriptIElement extends IElementType {

    public AngelScriptIElement(@NotNull @NonNls String debugName) {
        super(debugName, AngelScriptLanguage.INSTANCE);
    }

    @Override
    public String toString() {
        return "AngelScriptIElement." + super.toString();
    }
}
