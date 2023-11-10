package guru.xgm.jass.psi;

import com.intellij.psi.tree.TokenSet;

public interface TokenSetsJASS {
    TokenSet COMMENTS = TokenSet.create(TypesJASS.SINGLE_LINE_COMMENT);
}
