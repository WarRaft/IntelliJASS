package guru.xgm.language.angelscript.formatting.panel;

import com.intellij.application.options.codeStyle.OptionTreeWithPreviewPanel;
import com.intellij.lang.Language;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.openapi.util.NlsContexts;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.LanguageCodeStyleSettingsProvider;
import guru.xgm.language.angelscript.lang.AngelScriptLanguage;
import guru.xgm.language.angelscript.openapi.fileTypes.AngelScriptFileType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class AngelScriptAlignTokenPanel extends OptionTreeWithPreviewPanel {
    public AngelScriptAlignTokenPanel(CodeStyleSettings settings) {
        super(settings);
        init();
    }

    @NlsContexts.Label
    public static String ENUM = "Enum";

    @Override
    protected void initTables() {
        initCustomOptions(ENUM);
    }

    @Override
    protected @NlsContexts.TabTitle @NotNull String getTabTitle() {
        return "Align Token";
    }

    @Override
    public LanguageCodeStyleSettingsProvider.SettingsType getSettingsType() {
        return LanguageCodeStyleSettingsProvider.SettingsType.LANGUAGE_SPECIFIC;
    }

    @Override
    protected void customizeSettings() {
        LanguageCodeStyleSettingsProvider provider = LanguageCodeStyleSettingsProvider.forLanguage(AngelScriptLanguage.INSTANCE);
        if (provider != null) provider.customizeSettings(this, getSettingsType());
    }

    @Override
    @NotNull
    protected final FileType getFileType() {
        return AngelScriptFileType.INSTANCE;
    }

    @Nullable
    @Override
    public Language getDefaultLanguage() {
        return AngelScriptLanguage.INSTANCE;
    }
}
