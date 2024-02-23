package guru.xgm.angelscript.lexer;

import com.intellij.lexer.FlexAdapter;
import guru.xgm.angelscript.parser._AngelScriptLexer;

public class AngelScriptFlexAdapter extends FlexAdapter {

    public AngelScriptFlexAdapter() {
        super(new _AngelScriptLexer(null));
    }

}
