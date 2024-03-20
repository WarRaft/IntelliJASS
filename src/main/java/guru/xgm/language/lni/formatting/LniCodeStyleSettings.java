package guru.xgm.language.lni.formatting;

import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CustomCodeStyleSettings;
import lombok.experimental.FieldNameConstants;
import org.jetbrains.annotations.NotNull;

// https://projectlombok.org/features/experimental/FieldNameConstants
@FieldNameConstants
public class LniCodeStyleSettings extends CustomCodeStyleSettings {
    public LniCodeStyleSettings(@NotNull CodeStyleSettings container) {
        super("LniCodeStyleSettings", container);
    }

    public boolean AT_PROPERTY_EQ = false;

}
