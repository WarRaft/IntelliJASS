package guru.xgm.vjass.lexer;

import com.intellij.lexer.FlexAdapter;
import guru.xgm.vjass.parser._VjassLexer;

public class VjassFlexAdapter extends FlexAdapter {

    public VjassFlexAdapter() {
        super(new _VjassLexer(null));
    }

}
