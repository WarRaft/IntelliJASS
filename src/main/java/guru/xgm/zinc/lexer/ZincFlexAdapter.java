package guru.xgm.zinc.lexer;

import com.intellij.lexer.FlexAdapter;
import guru.xgm.zinc.parser._ZincLexer;

public class ZincFlexAdapter extends FlexAdapter {

    public ZincFlexAdapter() {
        super(new _ZincLexer(null));
    }

}
