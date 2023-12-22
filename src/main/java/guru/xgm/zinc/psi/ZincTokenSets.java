package guru.xgm.zinc.psi;

import com.intellij.psi.tree.TokenSet;

public interface ZincTokenSets {
    TokenSet COMMENTS = TokenSet.create(ZincTypes.SINGLE_LINE_COMMENT);
}
