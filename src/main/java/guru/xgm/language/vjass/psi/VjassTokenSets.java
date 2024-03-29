package guru.xgm.language.vjass.psi;

import com.intellij.psi.tree.TokenSet;

import static guru.xgm.language.vjass.psi.VjassTypes.MULTI_LINE_COMMENT;
import static guru.xgm.language.vjass.psi.VjassTypes.SINGLE_LINE_COMMENT;

public interface VjassTokenSets {
    TokenSet COMMENTS = TokenSet.create(SINGLE_LINE_COMMENT, MULTI_LINE_COMMENT);
}
