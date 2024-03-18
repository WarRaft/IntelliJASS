package guru.xgm.language.angelscript.lexer;

import com.intellij.lexer.FlexAdapter;

import guru.xgm.language.angelscript.parser._AngelScriptLexer;

public class AngelScriptFlexAdapter extends FlexAdapter {

    public AngelScriptFlexAdapter() {
        super(new _AngelScriptLexer(null));
    }
}
