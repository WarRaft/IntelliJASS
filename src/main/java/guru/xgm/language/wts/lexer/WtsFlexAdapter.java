package guru.xgm.language.wts.lexer;

import com.intellij.lexer.FlexAdapter;
import guru.xgm.language.wts.parser._WtsLexer;

public class WtsFlexAdapter extends FlexAdapter {
    public WtsFlexAdapter() {
        super(new _WtsLexer(null));
    }
}
