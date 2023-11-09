package guru.xgm.jass.psi;

import guru.xgm.jass.psi.TypesJASS;

import com.intellij.psi.tree.TokenSet;

public interface TokenSetsJASS {
    TokenSet IDENTIFIERS = TokenSet.create(TypesJASS.KEY);
    TokenSet COMMENTS = TokenSet.create(TypesJASS.COMMENT);
}
