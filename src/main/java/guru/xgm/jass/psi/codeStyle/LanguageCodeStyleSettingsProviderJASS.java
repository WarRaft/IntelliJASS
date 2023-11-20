package guru.xgm.jass.psi.codeStyle;

import com.intellij.application.options.IndentOptionsEditor;
import com.intellij.application.options.SmartIndentOptionsEditor;
import com.intellij.lang.Language;
import com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable;
import com.intellij.psi.codeStyle.CommonCodeStyleSettings;
import com.intellij.psi.codeStyle.LanguageCodeStyleSettingsProvider;
import guru.xgm.jass.lang.JassLanguage;
import org.jetbrains.annotations.NotNull;

final class LanguageCodeStyleSettingsProviderJASS extends LanguageCodeStyleSettingsProvider {

    @NotNull
    @Override
    public Language getLanguage() {
        return JassLanguage.INSTANCE;
    }

    @Override
    public void customizeSettings(@NotNull CodeStyleSettingsCustomizable consumer, @NotNull SettingsType settingsType) {
        if (settingsType == SettingsType.INDENT_SETTINGS) {
            consumer.showStandardOptions(
                    "INDENT_SIZE"
                    //"CONTINUATION_INDENT_SIZE",
                    //"TAB_SIZE",
                    //"USE_TAB_CHARACTER",
                    //"SMART_TABS",
                    //"LABEL_INDENT_SIZE",
                    //"LABEL_INDENT_ABSOLUTE",
                    //"USE_RELATIVE_INDENTS",
                    //"KEEP_INDENTS_ON_EMPTY_LINES"
            );
            return;
        }

        if (settingsType == SettingsType.SPACING_SETTINGS) {
            consumer.showStandardOptions(
                    "SPACE_AROUND_ASSIGNMENT_OPERATORS",
                    //"SPACE_AROUND_LOGICAL_OPERATORS",
                    /*
                    SPACE_AROUND_EQUALITY_OPERATORS,
                    SPACE_AROUND_RELATIONAL_OPERATORS,
                    SPACE_AROUND_BITWISE_OPERATORS,
                    SPACE_AROUND_ADDITIVE_OPERATORS,
                    SPACE_AROUND_MULTIPLICATIVE_OPERATORS,
                    SPACE_AROUND_SHIFT_OPERATORS,
                    SPACE_AROUND_UNARY_OPERATOR,
                    SPACE_AROUND_LAMBDA_ARROW,
                    SPACE_AROUND_METHOD_REF_DBL_COLON,
                     */
                    //"SPACE_AFTER_COMMA",
                    "SPACE_AFTER_COMMA_IN_TYPE_ARGUMENTS"
                    //"SPACE_BEFORE_COMMA"
            );
            //consumer.renameStandardOption("SPACE_AROUND_ASSIGNMENT_OPERATORS", "FuCK");
            return;
        }

        if (settingsType == SettingsType.BLANK_LINES_SETTINGS) {
            consumer.showStandardOptions("KEEP_BLANK_LINES_IN_CODE");

        }

        //consumer.showAllStandardOptions();

    }

    public @NotNull IndentOptionsEditor getIndentOptionsEditor() {
        return new SmartIndentOptionsEditor();
    }

    @Override
    protected void customizeDefaults(@NotNull CommonCodeStyleSettings commonSettings, @NotNull CommonCodeStyleSettings.IndentOptions indentOptions) {
        commonSettings.SPACE_AROUND_ASSIGNMENT_OPERATORS = true;
        indentOptions.INDENT_SIZE = 4;
    }

    @Override
    public String getCodeSample(@NotNull SettingsType settingsType) {
        return """
                type agent extends handle// all reference counted objects
                     type event extends agent	// a reference to an event registration
                        type player extends agent	// a single player reference
                type widget extends agent	// an interactive game object with life
                              
                constant native ConvertRace takes integer i returns race
                constant native ConvertAllianceType takes integer i returns alliancetype
                constant native ConvertRacePref takes integer i returns racepreference
                                
                native GetTeams takes nothing returns integer
                native GetPlayers takes nothing returns integer
                                              
                    native I2R takes integer i returns real
                    native R2I takes real r returns integer
                globals
                real a = 12.
                    real b = .13
                    
                    constant  real  c =  .14
                endglobals""";
    }
}

/*

    SPACE_AFTER_SEMICOLON,
    SPACE_BEFORE_SEMICOLON,
    SPACE_WITHIN_PARENTHESES,
    SPACE_WITHIN_METHOD_CALL_PARENTHESES,
    SPACE_WITHIN_METHOD_PARENTHESES,
    SPACE_WITHIN_IF_PARENTHESES,
    SPACE_WITHIN_WHILE_PARENTHESES,
    SPACE_WITHIN_FOR_PARENTHESES,
    SPACE_WITHIN_TRY_PARENTHESES,
    SPACE_WITHIN_CATCH_PARENTHESES,
    SPACE_WITHIN_SWITCH_PARENTHESES,
    SPACE_WITHIN_SYNCHRONIZED_PARENTHESES,
    SPACE_WITHIN_CAST_PARENTHESES,
    SPACE_WITHIN_BRACKETS,
    SPACE_WITHIN_BRACES,
    SPACE_WITHIN_ARRAY_INITIALIZER_BRACES,
    SPACE_AFTER_TYPE_CAST,
    SPACE_BEFORE_METHOD_CALL_PARENTHESES,
    SPACE_BEFORE_METHOD_PARENTHESES,
    SPACE_BEFORE_IF_PARENTHESES,
    SPACE_BEFORE_WHILE_PARENTHESES,
    SPACE_BEFORE_FOR_PARENTHESES,
    SPACE_BEFORE_TRY_PARENTHESES,
    SPACE_BEFORE_CATCH_PARENTHESES,
    SPACE_BEFORE_SWITCH_PARENTHESES,
    SPACE_BEFORE_SYNCHRONIZED_PARENTHESES,
    SPACE_BEFORE_CLASS_LBRACE,
    SPACE_BEFORE_METHOD_LBRACE,
    SPACE_BEFORE_IF_LBRACE,
    SPACE_BEFORE_ELSE_LBRACE,
    SPACE_BEFORE_WHILE_LBRACE,
    SPACE_BEFORE_FOR_LBRACE,
    SPACE_BEFORE_DO_LBRACE,
    SPACE_BEFORE_SWITCH_LBRACE,
    SPACE_BEFORE_TRY_LBRACE,
    SPACE_BEFORE_CATCH_LBRACE,
    SPACE_BEFORE_FINALLY_LBRACE,
    SPACE_BEFORE_SYNCHRONIZED_LBRACE,
    SPACE_BEFORE_ARRAY_INITIALIZER_LBRACE,
    SPACE_BEFORE_ANNOTATION_ARRAY_INITIALIZER_LBRACE,
    SPACE_BEFORE_ELSE_KEYWORD,
    SPACE_BEFORE_WHILE_KEYWORD,
    SPACE_BEFORE_CATCH_KEYWORD,
    SPACE_BEFORE_FINALLY_KEYWORD,
    SPACE_BEFORE_QUEST,
    SPACE_AFTER_QUEST,
    SPACE_BEFORE_COLON,
    SPACE_AFTER_COLON,
    SPACE_BEFORE_TYPE_PARAMETER_LIST,
    SPACE_BEFORE_ANOTATION_PARAMETER_LIST,
    SPACE_WITHIN_ANNOTATION_PARENTHESES,
    SPACE_WITHIN_EMPTY_METHOD_CALL_PARENTHESES,
    SPACE_WITHIN_EMPTY_METHOD_PARENTHESES,
    SPACE_WITHIN_EMPTY_ARRAY_INITIALIZER_BRACES,
  }

  enum BlankLinesOption {
    KEEP_BLANK_LINES_IN_DECLARATIONS,
    KEEP_BLANK_LINES_IN_CODE,
    KEEP_BLANK_LINES_BEFORE_RBRACE,
    KEEP_BLANK_LINES_BETWEEN_PACKAGE_DECLARATION_AND_HEADER,
    BLANK_LINES_BEFORE_PACKAGE,
    BLANK_LINES_AFTER_PACKAGE,
    BLANK_LINES_BEFORE_IMPORTS,
    BLANK_LINES_AFTER_IMPORTS,
    BLANK_LINES_AROUND_CLASS,
    BLANK_LINES_AROUND_FIELD,
    BLANK_LINES_AROUND_METHOD,
    BLANK_LINES_BEFORE_METHOD_BODY,
    BLANK_LINES_AROUND_FIELD_IN_INTERFACE,
    BLANK_LINES_AROUND_METHOD_IN_INTERFACE,
    BLANK_LINES_AFTER_CLASS_HEADER,
    BLANK_LINES_AFTER_ANONYMOUS_CLASS_HEADER,
    BLANK_LINES_BEFORE_CLASS_END
  }

  enum WrappingOrBraceOption {
    RIGHT_MARGIN,
    WRAP_ON_TYPING,
    KEEP_CONTROL_STATEMENT_IN_ONE_LINE,
    KEEP_LINE_BREAKS,
    KEEP_FIRST_COLUMN_COMMENT,
    CALL_PARAMETERS_WRAP,
    PREFER_PARAMETERS_WRAP,
    CALL_PARAMETERS_LPAREN_ON_NEXT_LINE,
    CALL_PARAMETERS_RPAREN_ON_NEXT_LINE,
    METHOD_PARAMETERS_WRAP,
    METHOD_PARAMETERS_LPAREN_ON_NEXT_LINE,
    METHOD_PARAMETERS_RPAREN_ON_NEXT_LINE,
    RESOURCE_LIST_WRAP,
    RESOURCE_LIST_LPAREN_ON_NEXT_LINE,
    RESOURCE_LIST_RPAREN_ON_NEXT_LINE,
    EXTENDS_LIST_WRAP,
    THROWS_LIST_WRAP,
    EXTENDS_KEYWORD_WRAP,
    THROWS_KEYWORD_WRAP,
    METHOD_CALL_CHAIN_WRAP,
    PARENTHESES_EXPRESSION_LPAREN_WRAP,
    PARENTHESES_EXPRESSION_RPAREN_WRAP,
    BINARY_OPERATION_WRAP,
    BINARY_OPERATION_SIGN_ON_NEXT_LINE,
    TERNARY_OPERATION_WRAP,
    TERNARY_OPERATION_SIGNS_ON_NEXT_LINE,
    MODIFIER_LIST_WRAP,
    KEEP_SIMPLE_BLOCKS_IN_ONE_LINE,
    KEEP_SIMPLE_METHODS_IN_ONE_LINE,
    KEEP_SIMPLE_CLASSES_IN_ONE_LINE,
    KEEP_SIMPLE_LAMBDAS_IN_ONE_LINE,
    KEEP_MULTIPLE_EXPRESSIONS_IN_ONE_LINE,
    FOR_STATEMENT_WRAP,
    FOR_STATEMENT_LPAREN_ON_NEXT_LINE,
    FOR_STATEMENT_RPAREN_ON_NEXT_LINE,
    ARRAY_INITIALIZER_WRAP,
    ARRAY_INITIALIZER_LBRACE_ON_NEXT_LINE,
    ARRAY_INITIALIZER_RBRACE_ON_NEXT_LINE,
    ASSIGNMENT_WRAP,
    PLACE_ASSIGNMENT_SIGN_ON_NEXT_LINE,
    LABELED_STATEMENT_WRAP,
    WRAP_COMMENTS,
    ASSERT_STATEMENT_WRAP,
    ASSERT_STATEMENT_COLON_ON_NEXT_LINE,
    IF_BRACE_FORCE,
    DOWHILE_BRACE_FORCE,
    WHILE_BRACE_FORCE,
    FOR_BRACE_FORCE,
    WRAP_LONG_LINES,
    METHOD_ANNOTATION_WRAP,
    CLASS_ANNOTATION_WRAP,
    FIELD_ANNOTATION_WRAP,
    PARAMETER_ANNOTATION_WRAP,
    VARIABLE_ANNOTATION_WRAP,
    ALIGN_MULTILINE_CHAINED_METHODS,
    WRAP_FIRST_METHOD_IN_CALL_CHAIN,
    ALIGN_MULTILINE_PARAMETERS,
    ALIGN_MULTILINE_PARAMETERS_IN_CALLS,
    ALIGN_MULTILINE_RESOURCES,
    ALIGN_MULTILINE_FOR,
    INDENT_WHEN_CASES,
    ALIGN_MULTILINE_BINARY_OPERATION,
    ALIGN_MULTILINE_ASSIGNMENT,
    ALIGN_MULTILINE_TERNARY_OPERATION,
    ALIGN_MULTILINE_THROWS_LIST,
    ALIGN_THROWS_KEYWORD,
    ALIGN_MULTILINE_EXTENDS_LIST,
    ALIGN_MULTILINE_METHOD_BRACKETS,
    ALIGN_MULTILINE_PARENTHESIZED_EXPRESSION,
    ALIGN_MULTILINE_ARRAY_INITIALIZER_EXPRESSION,
    ALIGN_GROUP_FIELD_DECLARATIONS,
    BRACE_STYLE,
    CLASS_BRACE_STYLE,
    METHOD_BRACE_STYLE,
    LAMBDA_BRACE_STYLE,
    USE_FLYING_GEESE_BRACES,
    FLYING_GEESE_BRACES_GAP,
    DO_NOT_INDENT_TOP_LEVEL_CLASS_MEMBERS,
    ELSE_ON_NEW_LINE,
    WHILE_ON_NEW_LINE,
    CATCH_ON_NEW_LINE,
    FINALLY_ON_NEW_LINE,
    INDENT_CASE_FROM_SWITCH,
    CASE_STATEMENT_ON_NEW_LINE,
    SPECIAL_ELSE_IF_TREATMENT,
    ENUM_CONSTANTS_WRAP,
    ALIGN_CONSECUTIVE_VARIABLE_DECLARATIONS,
    ALIGN_CONSECUTIVE_ASSIGNMENTS,
    ALIGN_SUBSEQUENT_SIMPLE_METHODS,
    INDENT_BREAK_FROM_CASE,
    BUILDER_METHODS,
    KEEP_BUILDER_METHODS_INDENTS
  }

  enum CommenterOption {
    LINE_COMMENT_ADD_SPACE,
    LINE_COMMENT_ADD_SPACE_ON_REFORMAT,
    LINE_COMMENT_AT_FIRST_COLUMN,
    BLOCK_COMMENT_AT_FIRST_COLUMN,
    BLOCK_COMMENT_ADD_SPACE
  }

int[] WRAP_VALUES = {CommonCodeStyleSettings.DO_NOT_WRAP,
        CommonCodeStyleSettings.WRAP_AS_NEEDED,
        CommonCodeStyleSettings.WRAP_AS_NEEDED |
                CommonCodeStyleSettings.WRAP_ON_EVERY_ITEM,
        CommonCodeStyleSettings.WRAP_ALWAYS};

int[] WRAP_VALUES_FOR_SINGLETON = {CommonCodeStyleSettings.DO_NOT_WRAP,
        CommonCodeStyleSettings.WRAP_AS_NEEDED,
        CommonCodeStyleSettings.WRAP_ALWAYS};

int[] BRACE_VALUES = {
        CommonCodeStyleSettings.DO_NOT_FORCE,
        CommonCodeStyleSettings.FORCE_BRACES_IF_MULTILINE,
        CommonCodeStyleSettings.FORCE_BRACES_ALWAYS
};

int[] BRACE_PLACEMENT_VALUES = {
        CommonCodeStyleSettings.END_OF_LINE,
        CommonCodeStyleSettings.NEXT_LINE_IF_WRAPPED,
        CommonCodeStyleSettings.NEXT_LINE,
        CommonCodeStyleSettings.NEXT_LINE_SHIFTED,
        CommonCodeStyleSettings.NEXT_LINE_SHIFTED2
};

int[] WRAP_ON_TYPING_VALUES = {
        CommonCodeStyleSettings.WrapOnTyping.NO_WRAP.intValue,
        CommonCodeStyleSettings.WrapOnTyping.WRAP.intValue,
        CommonCodeStyleSettings.WrapOnTyping.DEFAULT.intValue
};

 */
