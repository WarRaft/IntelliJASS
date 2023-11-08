package guru.xgm.jass.lexer;

import com.intellij.lexer.FlexAdapter;

public class FlexAdapter_JASS extends FlexAdapter {

    public FlexAdapter_JASS() {
        super(new Lexer_JASS(null));
    }

}
