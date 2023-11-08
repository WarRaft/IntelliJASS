package guru.xgm.jass.psi;

import com.intellij.psi.tree.TokenSet;

public interface TokenSets_JASS {
    TokenSet IDENTIFIERS = TokenSet.create(Types_JASS.KEY);

    TokenSet COMMENTS = TokenSet.create(Types_JASS.COMMENT);
}
