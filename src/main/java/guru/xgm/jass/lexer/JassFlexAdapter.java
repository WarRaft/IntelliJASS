package guru.xgm.jass.lexer;

import guru.xgm.jass.parser._JASSLexer;

import com.intellij.lexer.FlexAdapter;

public class JassFlexAdapter extends FlexAdapter {

    public JassFlexAdapter() {
        super(new _JASSLexer(null));
    }

}
