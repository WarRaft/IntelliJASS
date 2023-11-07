package org.intellij.sdk.language.jass;

import com.intellij.psi.tree.TokenSet;
import org.intellij.sdk.language.jass.psi.JassTypes;

public interface JassTokenSets {

    TokenSet IDENTIFIERS = TokenSet.create(JassTypes.KEY);

    TokenSet COMMENTS = TokenSet.create(JassTypes.COMMENT);

}
