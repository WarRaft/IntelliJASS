package guru.xgm.jass.formatting;

import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CustomCodeStyleSettings;
import lombok.experimental.FieldNameConstants;
import org.jetbrains.annotations.NotNull;

// https://projectlombok.org/features/experimental/FieldNameConstants
@FieldNameConstants
public class JassCodeStyleSettings extends CustomCodeStyleSettings {
    public JassCodeStyleSettings(@NotNull CodeStyleSettings container) {
        super("JassCodeStyleSettings", container);
    }

    public boolean AT_TYPE_DECL_EXTENDS = true;
    public boolean AT_TYPE_DECL_TYPE_RIGHT = false;
    public boolean AT_TYPE_DECL_TYPE_BASE_RIGHT = false;
    public boolean AT_NATIVE_DECL_NATIVE = false;
    public boolean AT_NATIVE_DECL_NAME = true;
    public boolean AT_NATIVE_DECL_NAME_RIGHT = false;
    public boolean AT_NATIVE_DECL_TAKES = true;
    public boolean AT_NATIVE_DECL_ARGUMENT = false;
    public boolean AT_NATIVE_DECL_RETURNS = false;
}
