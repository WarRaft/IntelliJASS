package guru.xgm.jgas.lexer;

import com.intellij.lexer.FlexAdapter;

public class FlexAdapter_JGAS extends FlexAdapter {

    public FlexAdapter_JGAS() {
        super(new Lexer_JGAS(null));
    }

}
