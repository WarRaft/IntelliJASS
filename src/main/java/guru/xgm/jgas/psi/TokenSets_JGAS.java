package guru.xgm.jgas.psi;

import com.intellij.psi.tree.TokenSet;

public interface TokenSets_JGAS {
    TokenSet IDENTIFIERS = TokenSet.create(Types_JGAS.KEY);

    TokenSet COMMENTS = TokenSet.create(Types_JGAS.COMMENT);
}
