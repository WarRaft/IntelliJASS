package guru.xgm.language.zinc.lexer;

import com.intellij.lexer.FlexAdapter;
import guru.xgm.language.zinc.parser._ZincLexer;

public class ZincFlexAdapter extends FlexAdapter {

    public ZincFlexAdapter() {
        super(new _ZincLexer(null));
    }

}
