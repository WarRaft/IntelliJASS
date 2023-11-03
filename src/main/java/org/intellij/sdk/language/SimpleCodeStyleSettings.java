package org.intellij.sdk.language;

import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CustomCodeStyleSettings;

public class SimpleCodeStyleSettings extends CustomCodeStyleSettings {

    public SimpleCodeStyleSettings(CodeStyleSettings settings) {
        super("SimpleCodeStyleSettings", settings);
    }

}
