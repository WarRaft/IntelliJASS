package guru.xgm.language.jass.formatting;

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
    public boolean AT_NATIVE_DECL_NAME = false;
    public boolean AT_NATIVE_DECL_NAME_RIGHT = false;
    public boolean AT_NATIVE_DECL_TAKES = false;
    public boolean AT_NATIVE_DECL_ARGUMENT = false;
    public boolean AT_NATIVE_DECL_RETURNS = false;
    public boolean AT_GVAR_TYPE = false;
    public boolean AT_GVAR_TYPE_RIGHT = false;
    public boolean AT_GVAR_ARRAY = false;
    public boolean AT_GVAR_NAME = false;
    public boolean AT_GVAR_NAME_RIGHT = false;
    public boolean AT_GVAR_ASSIGN = false;

}
