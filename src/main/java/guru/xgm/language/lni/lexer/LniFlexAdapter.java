package guru.xgm.language.lni.lexer;

import com.intellij.lexer.FlexAdapter;
import guru.xgm.language.lni.parser._LniLexer;

public class LniFlexAdapter extends FlexAdapter {

    public LniFlexAdapter() {
        super(new _LniLexer(null));
    }
}
