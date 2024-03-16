package guru.xgm.language.jass.psi;

import com.intellij.psi.tree.TokenSet;
import guru.xgm.language.jass.psi.JassTypes;

public interface JassTokenSets {
    TokenSet COMMENTS = TokenSet.create(JassTypes.SINGLE_LINE_COMMENT);
}
