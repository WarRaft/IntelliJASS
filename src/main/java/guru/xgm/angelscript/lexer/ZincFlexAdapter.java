package guru.xgm.angelscript.lexer;

import com.intellij.lexer.FlexAdapter;
import guru.xgm.angelscript.parser._ZincLexer;

public class ZincFlexAdapter extends FlexAdapter {

    public ZincFlexAdapter() {
        super(new _ZincLexer(null));
    }

}
