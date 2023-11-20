package guru.xgm.jass.psi;

import com.intellij.psi.tree.TokenSet;

public interface JassTokenSets {
    TokenSet COMMENTS = TokenSet.create(JassTypes.SINGLE_LINE_COMMENT);
}
