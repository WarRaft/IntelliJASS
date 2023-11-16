package guru.xgm.jass.formatting;

import guru.xgm.jass.lang.LanguageJASS;

import static guru.xgm.jass.psi.TypesJASS.*;

import guru.xgm.jass.psi.formatter.common.AbstractBlockJASS;


import com.intellij.formatting.*;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import org.jetbrains.annotations.NotNull;

@SuppressWarnings("CommentedOutCode")
final class FormattingModelBuilderJASS implements FormattingModelBuilder {
    /*
    @NotNull
  private static SpacingBuilder createSpacingBuilder(@NotNull CodeStyleSettings settings) {
    return new SpacingBuilder(settings, GoLanguage.INSTANCE)
      .before(COMMA).spaceIf(false)
      .after(COMMA).spaceIf(true)
      .betweenInside(SEMICOLON, SEMICOLON, FOR_CLAUSE).spaces(1)
      .before(SEMICOLON).spaceIf(false)
      .after(SEMICOLON).spaceIf(true)
      .beforeInside(DOT, IMPORT_SPEC).none()
      .afterInside(DOT, IMPORT_SPEC).spaces(1)
      .around(DOT).none()
      .around(ASSIGN).spaces(1)
      .around(VAR_ASSIGN).spaces(1)
      .aroundInside(MUL, POINTER_TYPE).none()
      .before(ARGUMENT_LIST).none()
      .before(BUILTIN_ARGUMENT_LIST).none()
      .afterInside(LPAREN, ARGUMENT_LIST).none()
      .beforeInside(RPAREN, ARGUMENT_LIST).none()
      .afterInside(LPAREN, BUILTIN_ARGUMENT_LIST).none()
      .beforeInside(RPAREN, BUILTIN_ARGUMENT_LIST).none()
      .before(SIGNATURE).none()
      .afterInside(LPAREN, TYPE_ASSERTION_EXPR).none()
      .beforeInside(RPAREN, TYPE_ASSERTION_EXPR).none()
      .afterInside(LPAREN, PARAMETERS).none()
      .beforeInside(RPAREN, PARAMETERS).none()
      .afterInside(LPAREN, RESULT).none()
      .beforeInside(RPAREN, RESULT).none()
      .between(PARAMETERS, RESULT).spaces(1)
      .before(BLOCK).spaces(1)
      .after(FUNC).spaces(1)
      .after(PACKAGE).spaces(1)
      .after(IMPORT).spaces(1)
      .after(CONST).spaces(1)
      .after(VAR).spaces(1)
      .after(STRUCT).spaces(1)
      .after(INTERFACE).spaces(1)
      .after(RETURN).spaces(1)
      .after(GO).spaces(1)
      .after(DEFER).spaces(1)
      .after(FALLTHROUGH).spaces(1)
      .after(GOTO).spaces(1)
      .after(CONTINUE).spaces(1)
      .after(BREAK).spaces(1)
      .after(SELECT).spaces(1)
      .after(FOR).spaces(1)
      .after(IF).spaces(1)
      .after(ELSE).spaces(1)
      .before(ELSE_STATEMENT).spaces(1)
      .after(CASE).spaces(1)
      .after(RANGE).spaces(1)
      .after(SWITCH).spaces(1)
      .afterInside(SEND_CHANNEL, UNARY_EXPR).none()
      .aroundInside(SEND_CHANNEL, SEND_STATEMENT).spaces(1)
      .afterInside(CHAN, CHANNEL_TYPE).spaces(1)
      .afterInside(MAP, MAP_TYPE).none()
      .aroundInside(LBRACK, MAP_TYPE).none()
      .aroundInside(RBRACK, MAP_TYPE).none()
      .beforeInside(LITERAL_VALUE, COMPOSITE_LIT).none()
      .afterInside(LBRACE, LITERAL_VALUE).none()
      .beforeInside(LBRACE, LITERAL_VALUE).none()
      .afterInside(BIT_AND, UNARY_EXPR).none()
      .after(LINE_COMMENT).lineBreakInCode()
      .after(MULTILINE_COMMENT).lineBreakInCode()
      .between(COMM_CASE, COLON).none()
      .afterInside(COLON, COMM_CLAUSE).lineBreakInCode()
      .betweenInside(FIELD_DECLARATION, LINE_COMMENT, STRUCT_TYPE).spaces(1)
      .betweenInside(FIELD_DECLARATION, MULTILINE_COMMENT, STRUCT_TYPE).spaces(1)
      .betweenInside(LBRACK, RBRACK, ARRAY_OR_SLICE_TYPE).none()
      .around(ASSIGN_OP).spaces(1)
      .aroundInside(OPERATORS, TokenSet.create(MUL_EXPR, ADD_EXPR, OR_EXPR, CONDITIONAL_EXPR)).spaces(1)

      .betweenInside(LBRACE, RBRACE, BLOCK).spacing(0, 0, 0, true, 1)
      .afterInside(LBRACE, BLOCK).spacing(0, 0, 1, true, 1)
      .beforeInside(RBRACE, BLOCK).spacing(0, 0, 1, true, 1)

      .betweenInside(LPAREN, RPAREN, IMPORT_DECLARATION).spacing(0, 0, 0, false, 0)
      .afterInside(LPAREN, IMPORT_DECLARATION).spacing(0, 0, 1, false, 0)
      .beforeInside(RPAREN, IMPORT_DECLARATION).spacing(0, 0, 1, false, 0)
      .between(IMPORT_SPEC, IMPORT_SPEC).spacing(0, 0, 1, true, 1)

      .betweenInside(LPAREN, RPAREN, VAR_DECLARATION).spacing(0, 0, 0, false, 0)
      .afterInside(LPAREN, VAR_DECLARATION).spacing(0, 0, 1, false, 0)
      .beforeInside(RPAREN, VAR_DECLARATION).spacing(0, 0, 1, false, 0)
      .beforeInside(TYPE, VAR_SPEC).spaces(1)
      .between(VAR_SPEC, VAR_SPEC).spacing(0, 0, 1, true, 1)

      .betweenInside(LPAREN, RPAREN, CONST_DECLARATION).spacing(0, 0, 0, false, 0)
      .afterInside(LPAREN, CONST_DECLARATION).spacing(0, 0, 1, false, 0)
      .beforeInside(RPAREN, CONST_DECLARATION).spacing(0, 0, 1, false, 0)
      .beforeInside(TYPE, CONST_SPEC).spaces(1)
      .between(CONST_SPEC, CONST_SPEC).spacing(0, 0, 1, true, 1)

      .between(FIELD_DECLARATION, FIELD_DECLARATION).spacing(0, 0, 1, true, 1)
      .between(METHOD_SPEC, METHOD_SPEC).spacing(0, 0, 1, true, 1)
      ;
  }
     */


    @NotNull
    private static SpacingBuilder createSpacingBuilder(@NotNull CodeStyleSettings codeStyleSettings) {
        final var common = codeStyleSettings.getCommonSettings(LanguageJASS.INSTANCE.getID());

        return new SpacingBuilder(codeStyleSettings, LanguageJASS.INSTANCE)
                .after(CONSTANT).spacing(1, 1, 0, false, 0)
                .after(NATIVE).spacing(1, 1, 0, false, 0)
                .after(IF).spacing(1, 1, 0, false, 0)
                .after(ELSEIF).spacing(1, 1, 0, false, 0)
                .after(ELSE).spacing(1, 1, 0, false, 0)
                .after(TYPE).spacing(1, 1, 0, false, 0)
                .around(EXTENDS).spacing(1, 1, 0, false, 0)
                //.before(FUNC_HEAD).spacing(1, 1, 0, false, 0)
                //.after(FUNC_HEAD).spacing(1, 1, 0, false, 0)
                .around(EQ).spaceIf(common.SPACE_AROUND_ASSIGNMENT_OPERATORS)
                ;
    }

    @Override
    public @NotNull FormattingModel createModel(@NotNull FormattingContext formattingContext) {
        final CodeStyleSettings codeStyleSettings = formattingContext.getCodeStyleSettings();
        return FormattingModelProvider
                .createFormattingModelForPsiFile(
                        formattingContext.getContainingFile(),
                        new AbstractBlockJASS(
                                formattingContext.getNode(),
                                Wrap.createWrap(WrapType.NONE, true),
                                Alignment.createAlignment(true, Alignment.Anchor.LEFT),
                                codeStyleSettings,
                                createSpacingBuilder(codeStyleSettings)
                        ),
                        codeStyleSettings
                );
    }

}
