package guru.xgm.language.jass.lexer;

import guru.xgm.language.jass.parser._JassLexer;

import com.intellij.lexer.FlexAdapter;

public class JassFlexAdapter extends FlexAdapter {

    public JassFlexAdapter() {
        super(new _JassLexer(null));
    }

}
