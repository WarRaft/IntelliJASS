package guru.xgm.jass.lexer;

import guru.xgm.jass.lexer.LexerJASS;

import com.intellij.lexer.FlexAdapter;

public class FlexAdapterJASS extends FlexAdapter {

    public FlexAdapterJASS() {
        super(new LexerJASS(null));
    }

}
