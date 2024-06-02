package guru.xgm.language.lni.formatting.panel;

import com.intellij.application.options.codeStyle.OptionTreeWithPreviewPanel;
import com.intellij.lang.Language;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.openapi.util.NlsContexts;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.LanguageCodeStyleSettingsProvider;
import guru.xgm.language.lni.lang.LniLanguage;
import guru.xgm.language.lni.openapi.fileTypes.LniFileType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;

public class LniAlignTokenPanel extends OptionTreeWithPreviewPanel {
    public LniAlignTokenPanel(CodeStyleSettings settings) {
        super(settings);
        init();
    }

    @NlsContexts.Label
    public static String GROUP_PROPERTY = "Property";

    @NlsContexts.Label
    public static String GROUP_NATIVE_DECL = "Native declaration";

    @NlsContexts.Label
    public static String GROUP_GVAR = "Global variable";

    @Override
    protected void initTables() {
        initCustomOptions(GROUP_PROPERTY);
        initCustomOptions(GROUP_NATIVE_DECL);
        initCustomOptions(GROUP_GVAR);
    }

    @Override
    public JComponent getPanel() {
        return myPanel;
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
        LanguageCodeStyleSettingsProvider provider = LanguageCodeStyleSettingsProvider.forLanguage(LniLanguage.INSTANCE);
        if (provider != null) provider.customizeSettings(this, getSettingsType());
    }

    @Override
    @NotNull
    protected final FileType getFileType() {
        return LniFileType.Companion.getInstance();
    }

    @Nullable
    @Override
    public Language getDefaultLanguage() {
        return LniLanguage.INSTANCE;
    }
}
