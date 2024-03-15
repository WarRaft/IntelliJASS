package guru.xgm.language.vjass.lexer;

import com.intellij.lexer.FlexAdapter;
import guru.xgm.language.vjass.parser._VjassLexer;

public class VjassFlexAdapter extends FlexAdapter {

    public VjassFlexAdapter() {
        super(new _VjassLexer(null));
    }

}
