package guru.xgm.jass.psi;

import com.intellij.psi.tree.TokenSet;
import org.intellij.sdk.language.jass.psi.JassTypes;

public interface TokenSets_JASS {
    TokenSet IDENTIFIERS = TokenSet.create(JassTypes.KEY);

    TokenSet COMMENTS = TokenSet.create(JassTypes.COMMENT);
}
