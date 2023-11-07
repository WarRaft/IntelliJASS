package org.intellij.sdk.language.jass.psi;

import com.intellij.psi.tree.TokenSet;

public interface JassTokenSets {
    TokenSet IDENTIFIERS = TokenSet.create(JassTypes.KEY);

    TokenSet COMMENTS = TokenSet.create(JassTypes.COMMENT);
}
