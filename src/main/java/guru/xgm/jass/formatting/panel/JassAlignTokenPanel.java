package guru.xgm.jass.formatting.panel;

import com.intellij.application.options.codeStyle.OptionTreeWithPreviewPanel;
import com.intellij.lang.Language;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.openapi.util.NlsContexts;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.LanguageCodeStyleSettingsProvider;
import guru.xgm.jass.lang.JassLanguage;
import guru.xgm.jass.openapi.fileTypes.JassFileType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;
import java.awt.*;

public class JassAlignTokenPanel extends OptionTreeWithPreviewPanel {
    public JassAlignTokenPanel(CodeStyleSettings settings) {
        super(settings);
        init();
    }

    @NlsContexts.Label
    public static String GROUP_TYPE = "Type declaration";

    @Override
    protected void initTables() {
        initCustomOptions(GROUP_TYPE);
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
        LanguageCodeStyleSettingsProvider provider = LanguageCodeStyleSettingsProvider.forLanguage(JassLanguage.INSTANCE);
        if (provider != null) provider.customizeSettings(this, getSettingsType());
    }

    @Override
    @NotNull
    protected final FileType getFileType() {
        return JassFileType.INSTANCE;
    }

    @Nullable
    @Override
    public Language getDefaultLanguage() {
        return JassLanguage.INSTANCE;
    }
}
