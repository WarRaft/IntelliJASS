package guru.xgm.language.zinc.psi;

import com.intellij.psi.tree.TokenSet;

import static guru.xgm.language.zinc.psi.ZincTypes.*;

public interface ZincTokenSets {
    TokenSet COMMENTS = TokenSet.create(LINE_COMMENT, BLOCK_COMMENT);
}
