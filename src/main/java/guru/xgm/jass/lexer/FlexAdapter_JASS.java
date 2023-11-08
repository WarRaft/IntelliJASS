package guru.xgm.jass.lexer;

import com.intellij.lexer.FlexAdapter;
import org.intellij.sdk.language.jass.JassLexer;

public class FlexAdapter_JASS extends FlexAdapter {

    public FlexAdapter_JASS() {
        super(new JassLexer(null));
    }

}
