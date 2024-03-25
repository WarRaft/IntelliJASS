package guru.xgm.language.angelscript.formatting;

import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CustomCodeStyleSettings;
import lombok.experimental.FieldNameConstants;
import org.jetbrains.annotations.NotNull;

// https://projectlombok.org/features/experimental/FieldNameConstants
@FieldNameConstants
public class AngelScriptCodeStyleSettings extends CustomCodeStyleSettings {
    public AngelScriptCodeStyleSettings(@NotNull CodeStyleSettings container) {
        super("AngelScriptCodeStyleSettings", container);
    }

    public boolean AT_ENUM_EQ = false;
}

