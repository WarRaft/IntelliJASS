package guru.xgm.language.lni.psi;

import com.intellij.psi.tree.TokenSet;

import static guru.xgm.language.lni.psi.LniTypes.*;

public interface LniTokenSets {
    TokenSet COMMENTS = TokenSet.create(LINE_COMMENT);
}

