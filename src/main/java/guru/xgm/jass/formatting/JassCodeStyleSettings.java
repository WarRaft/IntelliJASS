package guru.xgm.jass.formatting;

import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CustomCodeStyleSettings;
import org.jetbrains.annotations.NotNull;

public class JassCodeStyleSettings extends CustomCodeStyleSettings {
    public JassCodeStyleSettings(@NotNull CodeStyleSettings container) {
        super("JassCodeStyleSettings", container);
    }

    public boolean AT_EXTENDS = true;
}
