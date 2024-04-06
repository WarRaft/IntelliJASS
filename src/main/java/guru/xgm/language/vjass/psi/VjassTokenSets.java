package guru.xgm.language.vjass.psi;

import com.intellij.psi.tree.TokenSet;

import static guru.xgm.language.vjass.psi.VjassTypes.BLOCK_COMMENT;
import static guru.xgm.language.vjass.psi.VjassTypes.LINE_COMMENT;

public interface VjassTokenSets {
    TokenSet COMMENTS = TokenSet.create(LINE_COMMENT, BLOCK_COMMENT);
}
