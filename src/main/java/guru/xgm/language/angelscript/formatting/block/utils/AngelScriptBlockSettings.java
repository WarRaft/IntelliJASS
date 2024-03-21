package guru.xgm.language.angelscript.formatting.block.utils;

import com.intellij.formatting.FormattingContext;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CommonCodeStyleSettings;
import guru.xgm.language.angelscript.formatting.AngelScriptCodeStyleSettings;
import guru.xgm.language.angelscript.lang.AngelScriptLanguage;

public class AngelScriptBlockSettings {
    public AngelScriptBlockSettings(FormattingContext formattingContext) {
        code = formattingContext.getCodeStyleSettings();
        common = code.getCommonSettings(AngelScriptLanguage.INSTANCE.getID());
        custom = code.getCustomSettings(AngelScriptCodeStyleSettings.class);
    }

    public final CodeStyleSettings code;
    public final CommonCodeStyleSettings common;
    public final AngelScriptCodeStyleSettings custom;
}
