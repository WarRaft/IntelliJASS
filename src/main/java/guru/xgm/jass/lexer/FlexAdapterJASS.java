package guru.xgm.jass.lexer;

import guru.xgm.jass.parser._JASSLexer;

import com.intellij.lexer.FlexAdapter;

public class FlexAdapterJASS extends FlexAdapter {

    public FlexAdapterJASS() {
        super(new _JASSLexer(null));
    }

}
