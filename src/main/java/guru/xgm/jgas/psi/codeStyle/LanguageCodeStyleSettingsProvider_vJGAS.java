package guru.xgm.jgas.psi.codeStyle;

import com.intellij.lang.Language;
import com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable;
import com.intellij.psi.codeStyle.LanguageCodeStyleSettingsProvider;
import guru.xgm.jgas.lang.Language_JGAS;
import org.jetbrains.annotations.NotNull;

final class LanguageCodeStyleSettingsProvider_vJGAS extends LanguageCodeStyleSettingsProvider {

    @NotNull
    @Override
    public Language getLanguage() {
        return Language_JGAS.INSTANCE;
    }

    @Override
    public void customizeSettings(@NotNull CodeStyleSettingsCustomizable consumer, @NotNull SettingsType settingsType) {
        if (settingsType == SettingsType.SPACING_SETTINGS) {
            consumer.showStandardOptions("SPACE_AROUND_ASSIGNMENT_OPERATORS");
            consumer.renameStandardOption("SPACE_AROUND_ASSIGNMENT_OPERATORS", "Separator");
        } else if (settingsType == SettingsType.BLANK_LINES_SETTINGS) {
            consumer.showStandardOptions("KEEP_BLANK_LINES_IN_CODE");
        }
    }

    @Override
    public String getCodeSample(@NotNull SettingsType settingsType) {
        return """
                # You are reading the ".properties" entry.
                ! The exclamation mark can also mark text as comments.
                website = https://en.wikipedia.org/

                language = English
                # The backslash below tells the application to continue reading
                # the value onto the next line.
                message = Welcome to \\
                          Wikipedia!
                # Add spaces to the key
                key\\ with\\ spaces = This is the value that could be looked up with the key "key with spaces".
                # Unicode
                tab : \\u0009""";
    }

}
