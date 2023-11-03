package org.intellij.sdk.language.jass;

import com.intellij.lexer.FlexAdapter;

public class JassLexerAdapter extends FlexAdapter {

    public JassLexerAdapter() {
        super(new JassLexer(null));
    }

}
