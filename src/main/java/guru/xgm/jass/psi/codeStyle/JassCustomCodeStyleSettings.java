package guru.xgm.jass.psi.codeStyle;

import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CustomCodeStyleSettings;

public class JassCustomCodeStyleSettings extends CustomCodeStyleSettings {

    public JassCustomCodeStyleSettings(CodeStyleSettings settings) {
        super("CustomCodeStyleSettingsJASS", settings);
    }

}
