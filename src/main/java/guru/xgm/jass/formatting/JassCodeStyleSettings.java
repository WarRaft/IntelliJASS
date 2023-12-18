package guru.xgm.jass.formatting;

import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CustomCodeStyleSettings;
import org.jetbrains.annotations.NotNull;

public class JassCodeStyleSettings extends CustomCodeStyleSettings {
    public JassCodeStyleSettings(@NotNull CodeStyleSettings container) {
        super("JassCodeStyleSettings", container);
    }

    public boolean AT_TYPE_DECL_EXTENDS = true;
    public boolean AT_TYPE_DECL_TYPE_RIGHT = false;
    public boolean AT_TYPE_DECL_TYPE_BASE_RIGHT = false;

}
