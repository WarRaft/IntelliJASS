package guru.xgm.language.angelscript.psi.codeStyle;

import com.intellij.application.options.CodeStyleAbstractConfigurable;
import com.intellij.application.options.CodeStyleAbstractPanel;
import com.intellij.application.options.IndentOptionsEditor;
import com.intellij.application.options.SmartIndentOptionsEditor;
import com.intellij.lang.Language;
import com.intellij.psi.codeStyle.*;
import guru.xgm.language.angelscript.formatting.AngelScriptCodeStyleSettings;
import guru.xgm.language.angelscript.formatting.panel.AngelScriptCodeStyleMainPanel;
import guru.xgm.language.angelscript.lang.AngelScriptLanguage;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.BlankLinesOption.*;
import static com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.SpacingOption.*;
import static com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.WrappingOrBraceOption.*;

final class AngelScriptLanguageCodeStyleSettingsProvider extends LanguageCodeStyleSettingsProvider {

    @Override
    public @NotNull CustomCodeStyleSettings createCustomSettings(@NotNull CodeStyleSettings settings) {
        return new AngelScriptCodeStyleSettings(settings);
    }

    @NotNull
    @Override
    public CodeStyleConfigurable createConfigurable(@NotNull CodeStyleSettings settings, @NotNull CodeStyleSettings modelSettings) {
        return new CodeStyleAbstractConfigurable(settings, modelSettings, AngelScriptLanguage.INSTANCE.getDisplayName()) {
            @Override
            protected @NotNull CodeStyleAbstractPanel createPanel(final @NotNull CodeStyleSettings settings) {
                return new AngelScriptCodeStyleMainPanel(getCurrentSettings(), settings);
            }

            @Override
            public String getHelpTopic() {
                return "AngelScript Help Topic";
            }
        };
    }

    @NotNull
    @Override
    public Language getLanguage() {
        return AngelScriptLanguage.INSTANCE;
    }

    @Override
    public void customizeSettings(@NotNull CodeStyleSettingsCustomizable consumer, @NotNull SettingsType settingsType) {

        //consumer.showAllStandardOptions();

        switch (settingsType) {
            case INDENT_SETTINGS -> consumer.showStandardOptions();

            case SPACING_SETTINGS -> consumer.showStandardOptions(
                    SPACE_AFTER_COMMA.name(),
                    SPACE_BEFORE_COMMA.name(),
                    SPACE_AROUND_ASSIGNMENT_OPERATORS.name()
            );
            case BLANK_LINES_SETTINGS -> consumer.showStandardOptions(
                    KEEP_BLANK_LINES_IN_DECLARATIONS.name()
            );

            case WRAPPING_AND_BRACES_SETTINGS -> consumer.showStandardOptions(
                    METHOD_BRACE_STYLE.name(),
                    BRACE_STYLE.name()
            );
        }
    }

    public @NotNull IndentOptionsEditor getIndentOptionsEditor() {
        return new SmartIndentOptionsEditor();
    }

    @Override
    protected void customizeDefaults(@NotNull CommonCodeStyleSettings commonSettings, @NotNull CommonCodeStyleSettings.IndentOptions indentOptions) {
        indentOptions.INDENT_SIZE = 4;
        indentOptions.CONTINUATION_INDENT_SIZE = 4;
        indentOptions.TAB_SIZE = 4;
        indentOptions.USE_TAB_CHARACTER = false;
        indentOptions.SMART_TABS = false;
    }

    @Override
    public String getCodeSample(@NotNull SettingsType settingsType) {
        return """
                void MyFunc( trigger t, playerunitevent whichEvent )
                 {
                 int a = 1;
                 a += 2;
                 a -= 3;
                 
                     for ( int i = 0; i < GetBJMaxPlayerSlots( ); i++ )
                         {
                             TriggerRegisterPlayerUnitEvent( t, Player( i ), whichEvent, nil );
                         }
                         
                         if (a > 23) {
                            a -= 1;
                         } else {
                            a += 45;
                         }
                 }
                """;
    }
}
