package guru.xgm.language.zinc.psi;

import com.intellij.psi.tree.TokenSet;

import static guru.xgm.zinc.psi.ZincTypes.*;

public interface ZincTokenSets {
    TokenSet COMMENTS = TokenSet.create(SINGLE_LINE_COMMENT, MULTI_LINE_COMMENT);
}
