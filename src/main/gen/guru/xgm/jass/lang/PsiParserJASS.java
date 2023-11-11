// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.lang;

import com.intellij.lang.PsiBuilder;
import com.intellij.lang.PsiBuilder.Marker;
import static guru.xgm.jass.psi.TypesJASS.*;
import static com.intellij.lang.parser.GeneratedParserUtilBase.*;
import com.intellij.psi.tree.IElementType;
import com.intellij.lang.ASTNode;
import com.intellij.psi.tree.TokenSet;
import com.intellij.lang.PsiParser;
import com.intellij.lang.LightPsiParser;

@SuppressWarnings({"SimplifiableIfStatement", "UnusedAssignment"})
public class PsiParserJASS implements PsiParser, LightPsiParser {

  public ASTNode parse(IElementType t, PsiBuilder b) {
    parseLight(t, b);
    return b.getTreeBuilt();
  }

  public void parseLight(IElementType t, PsiBuilder b) {
    boolean r;
    b = adapt_builder_(t, b, this, EXTENDS_SETS_);
    Marker m = enter_section_(b, 0, _COLLAPSE_, null);
    r = parse_root_(t, b);
    exit_section_(b, 0, m, t, r, true, TRUE_CONDITION);
  }

  protected boolean parse_root_(IElementType t, PsiBuilder b) {
    return parse_root_(t, b, 0);
  }

  static boolean parse_root_(IElementType t, PsiBuilder b, int l) {
    boolean r;
    if (t == EXPRESSION) {
      r = expression(b, l + 1, -1);
    }
    else {
      r = script(b, l + 1);
    }
    return r;
  }

  public static final TokenSet[] EXTENDS_SETS_ = new TokenSet[] {
    create_token_set_(AND_EXPRESSION, ASSIGN_EXPRESSION, CALL_EXPRESSION, CONDITIONAL_EXPRESSION,
      DIV_EXPRESSION, EXPRESSION, LITERAL_EXPRESSION, MINUS_EXPRESSION,
      MINUS_UNARY_EXPRESSION, MUL_EXPRESSION, NOT_UNARY_EXPRESSION, OR_EXPRESSION,
      PAREN_EXPRESSION, PLUS_EXPRESSION, PLUS_UNARY_EXPRESSION, REF_EXPRESSION),
  };

  /* ********************************************************** */
  // type variable
  public static boolean argument(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "argument")) return false;
    if (!nextTokenIs(b, IDENTIFIER)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = type(b, l + 1);
    r = r && variable(b, l + 1);
    exit_section_(b, m, ARGUMENT, r);
    return r;
  }

  /* ********************************************************** */
  // argument  (COMMA argument)*
  public static boolean argumentList(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "argumentList")) return false;
    if (!nextTokenIs(b, IDENTIFIER)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = argument(b, l + 1);
    r = r && argumentList_1(b, l + 1);
    exit_section_(b, m, ARGUMENT_LIST, r);
    return r;
  }

  // (COMMA argument)*
  private static boolean argumentList_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "argumentList_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!argumentList_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "argumentList_1", c)) break;
    }
    return true;
  }

  // COMMA argument
  private static boolean argumentList_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "argumentList_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && argument(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // SET? variable ASSIGN expression
  public static boolean assignStatement(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "assignStatement")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, ASSIGN_STATEMENT, "<assign statement>");
    r = assignStatement_0(b, l + 1);
    r = r && variable(b, l + 1);
    r = r && consumeToken(b, ASSIGN);
    p = r; // pin = 3
    r = r && expression(b, l + 1, -1);
    exit_section_(b, l, m, r, p, PsiParserJASS::assignStatementRecover);
    return r || p;
  }

  // SET?
  private static boolean assignStatement_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "assignStatement_0")) return false;
    consumeToken(b, SET);
    return true;
  }

  /* ********************************************************** */
  // !(SET)
  static boolean assignStatementRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "assignStatementRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !consumeToken(b, SET);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // LPAREN [ !RPAREN expression  (COMMA expression)* ] RPAREN
  public static boolean callParamenters(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "callParamenters")) return false;
    if (!nextTokenIs(b, LPAREN)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, CALL_PARAMENTERS, null);
    r = consumeToken(b, LPAREN);
    p = r; // pin = 1
    r = r && report_error_(b, callParamenters_1(b, l + 1));
    r = p && consumeToken(b, RPAREN) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // [ !RPAREN expression  (COMMA expression)* ]
  private static boolean callParamenters_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "callParamenters_1")) return false;
    callParamenters_1_0(b, l + 1);
    return true;
  }

  // !RPAREN expression  (COMMA expression)*
  private static boolean callParamenters_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "callParamenters_1_0")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_);
    r = callParamenters_1_0_0(b, l + 1);
    p = r; // pin = 1
    r = r && report_error_(b, expression(b, l + 1, -1));
    r = p && callParamenters_1_0_2(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // !RPAREN
  private static boolean callParamenters_1_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "callParamenters_1_0_0")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !consumeToken(b, RPAREN);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (COMMA expression)*
  private static boolean callParamenters_1_0_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "callParamenters_1_0_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!callParamenters_1_0_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "callParamenters_1_0_2", c)) break;
    }
    return true;
  }

  // COMMA expression
  private static boolean callParamenters_1_0_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "callParamenters_1_0_2_0")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_);
    r = consumeToken(b, COMMA);
    p = r; // pin = 1
    r = r && expression(b, l + 1, -1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // KEYWORD_FUNCTION functionHead statementList KEYWORD_ENDFUNCTION
  public static boolean functionDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionDeclaration")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNCTION_DECLARATION, "<function declaration>");
    r = consumeToken(b, KEYWORD_FUNCTION);
    p = r; // pin = 1
    r = r && report_error_(b, functionHead(b, l + 1));
    r = p && report_error_(b, statementList(b, l + 1)) && r;
    r = p && consumeToken(b, KEYWORD_ENDFUNCTION) && r;
    exit_section_(b, l, m, r, p, PsiParserJASS::functionDeclarationRecover);
    return r || p;
  }

  /* ********************************************************** */
  // !(KEYWORD_FUNCTION | IDENTIFIER ASSIGN | KEYWORD_ENDFUNCTION)
  static boolean functionDeclarationRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionDeclarationRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !functionDeclarationRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // KEYWORD_FUNCTION | IDENTIFIER ASSIGN | KEYWORD_ENDFUNCTION
  private static boolean functionDeclarationRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionDeclarationRecover_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, KEYWORD_FUNCTION);
    if (!r) r = parseTokens(b, 0, IDENTIFIER, ASSIGN);
    if (!r) r = consumeToken(b, KEYWORD_ENDFUNCTION);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // functionName KEYWORD_TAKES (NOTHING|argumentList) KEYWORD_RETURNS (NOTHING|type)
  public static boolean functionHead(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionHead")) return false;
    if (!nextTokenIs(b, IDENTIFIER)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNCTION_HEAD, null);
    r = functionName(b, l + 1);
    p = r; // pin = 1
    r = r && report_error_(b, consumeToken(b, KEYWORD_TAKES));
    r = p && report_error_(b, functionHead_2(b, l + 1)) && r;
    r = p && report_error_(b, consumeToken(b, KEYWORD_RETURNS)) && r;
    r = p && functionHead_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // NOTHING|argumentList
  private static boolean functionHead_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionHead_2")) return false;
    boolean r;
    r = consumeToken(b, NOTHING);
    if (!r) r = argumentList(b, l + 1);
    return r;
  }

  // NOTHING|type
  private static boolean functionHead_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionHead_4")) return false;
    boolean r;
    r = consumeToken(b, NOTHING);
    if (!r) r = type(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // IDENTIFIER
  public static boolean functionName(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionName")) return false;
    if (!nextTokenIs(b, IDENTIFIER)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, IDENTIFIER);
    exit_section_(b, m, FUNCTION_NAME, r);
    return r;
  }

  /* ********************************************************** */
  // KEYWORD_GLOBALS (variableDeclaration)* KEYWORD_ENDGLOBALS
  public static boolean globalsDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "globalsDeclaration")) return false;
    if (!nextTokenIs(b, KEYWORD_GLOBALS)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, KEYWORD_GLOBALS);
    r = r && globalsDeclaration_1(b, l + 1);
    r = r && consumeToken(b, KEYWORD_ENDGLOBALS);
    exit_section_(b, m, GLOBALS_DECLARATION, r);
    return r;
  }

  // (variableDeclaration)*
  private static boolean globalsDeclaration_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "globalsDeclaration_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!globalsDeclaration_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "globalsDeclaration_1", c)) break;
    }
    return true;
  }

  // (variableDeclaration)
  private static boolean globalsDeclaration_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "globalsDeclaration_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = variableDeclaration(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // KEYWORD_CONSTANT? KEYWORD_NATIVE functionHead
  public static boolean nativeDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration")) return false;
    if (!nextTokenIs(b, "<native declaration>", KEYWORD_CONSTANT, KEYWORD_NATIVE)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, NATIVE_DECLARATION, "<native declaration>");
    r = nativeDeclaration_0(b, l + 1);
    r = r && consumeToken(b, KEYWORD_NATIVE);
    r = r && functionHead(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // KEYWORD_CONSTANT?
  private static boolean nativeDeclaration_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_0")) return false;
    consumeToken(b, KEYWORD_CONSTANT);
    return true;
  }

  /* ********************************************************** */
  // (
  // typeDeclaration
  // |nativeDeclaration
  // |globalsDeclaration
  // |functionDeclaration
  // )*
  static boolean script(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "script")) return false;
    Marker m = enter_section_(b, l, _NONE_);
    while (true) {
      int c = current_position_(b);
      if (!script_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "script", c)) break;
    }
    exit_section_(b, l, m, true, false, PsiParserJASS::scriptRecover);
    return true;
  }

  // typeDeclaration
  // |nativeDeclaration
  // |globalsDeclaration
  // |functionDeclaration
  private static boolean script_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "script_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = typeDeclaration(b, l + 1);
    if (!r) r = nativeDeclaration(b, l + 1);
    if (!r) r = globalsDeclaration(b, l + 1);
    if (!r) r = functionDeclaration(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // !(
  // KEYWORD_TYPE
  // |KEYWORD_CONSTANT
  // |KEYWORD_NATIVE
  // |KEYWORD_GLOBALS
  // |KEYWORD_FUNCTION
  // )
  static boolean scriptRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "scriptRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !scriptRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // KEYWORD_TYPE
  // |KEYWORD_CONSTANT
  // |KEYWORD_NATIVE
  // |KEYWORD_GLOBALS
  // |KEYWORD_FUNCTION
  private static boolean scriptRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "scriptRecover_0")) return false;
    boolean r;
    r = consumeToken(b, KEYWORD_TYPE);
    if (!r) r = consumeToken(b, KEYWORD_CONSTANT);
    if (!r) r = consumeToken(b, KEYWORD_NATIVE);
    if (!r) r = consumeToken(b, KEYWORD_GLOBALS);
    if (!r) r = consumeToken(b, KEYWORD_FUNCTION);
    return r;
  }

  /* ********************************************************** */
  // (assignStatement)*
  public static boolean statementList(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "statementList")) return false;
    Marker m = enter_section_(b, l, _NONE_, STATEMENT_LIST, "<statement list>");
    while (true) {
      int c = current_position_(b);
      if (!statementList_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "statementList", c)) break;
    }
    exit_section_(b, l, m, true, false, null);
    return true;
  }

  // (assignStatement)
  private static boolean statementList_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "statementList_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = assignStatement(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // IDENTIFIER
  public static boolean type(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "type")) return false;
    if (!nextTokenIs(b, IDENTIFIER)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, IDENTIFIER);
    exit_section_(b, m, TYPE, r);
    return r;
  }

  /* ********************************************************** */
  // KEYWORD_TYPE type KEYWORD_EXTENDS type
  public static boolean typeDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "typeDeclaration")) return false;
    if (!nextTokenIs(b, KEYWORD_TYPE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, TYPE_DECLARATION, null);
    r = consumeToken(b, KEYWORD_TYPE);
    p = r; // pin = 1
    r = r && report_error_(b, type(b, l + 1));
    r = p && report_error_(b, consumeToken(b, KEYWORD_EXTENDS)) && r;
    r = p && type(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // IDENTIFIER
  public static boolean variable(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variable")) return false;
    if (!nextTokenIs(b, IDENTIFIER)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, IDENTIFIER);
    exit_section_(b, m, VARIABLE, r);
    return r;
  }

  /* ********************************************************** */
  // KEYWORD_CONSTANT? type ARRAY? variable (ASSIGN expression)?
  public static boolean variableDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variableDeclaration")) return false;
    if (!nextTokenIs(b, "<variable declaration>", IDENTIFIER, KEYWORD_CONSTANT)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, VARIABLE_DECLARATION, "<variable declaration>");
    r = variableDeclaration_0(b, l + 1);
    r = r && type(b, l + 1);
    r = r && variableDeclaration_2(b, l + 1);
    r = r && variable(b, l + 1);
    p = r; // pin = 4
    r = r && variableDeclaration_4(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // KEYWORD_CONSTANT?
  private static boolean variableDeclaration_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variableDeclaration_0")) return false;
    consumeToken(b, KEYWORD_CONSTANT);
    return true;
  }

  // ARRAY?
  private static boolean variableDeclaration_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variableDeclaration_2")) return false;
    consumeToken(b, ARRAY);
    return true;
  }

  // (ASSIGN expression)?
  private static boolean variableDeclaration_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variableDeclaration_4")) return false;
    variableDeclaration_4_0(b, l + 1);
    return true;
  }

  // ASSIGN expression
  private static boolean variableDeclaration_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variableDeclaration_4_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ASSIGN);
    r = r && expression(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // Expression root: expression
  // Operator priority table:
  // 0: BINARY(assignExpression)
  // 1: BINARY(conditionalExpression)
  // 2: BINARY(plusExpression) BINARY(minusExpression)
  // 3: BINARY(andExpression) BINARY(orExpression)
  // 4: BINARY(mulExpression) BINARY(divExpression)
  // 5: PREFIX(plusUnaryExpression) PREFIX(minusUnaryExpression) PREFIX(notUnaryExpression)
  // 6: POSTFIX(callExpression)
  // 7: POSTFIX(qualificationExpression)
  // 8: ATOM(refSimpleExpression) ATOM(literalExpression) PREFIX(parenExpression)
  public static boolean expression(PsiBuilder b, int l, int g) {
    if (!recursion_guard_(b, l, "expression")) return false;
    addVariant(b, "<expression>");
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, "<expression>");
    r = plusUnaryExpression(b, l + 1);
    if (!r) r = minusUnaryExpression(b, l + 1);
    if (!r) r = notUnaryExpression(b, l + 1);
    if (!r) r = refSimpleExpression(b, l + 1);
    if (!r) r = literalExpression(b, l + 1);
    if (!r) r = parenExpression(b, l + 1);
    p = r;
    r = r && expression_0(b, l + 1, g);
    exit_section_(b, l, m, null, r, p, null);
    return r || p;
  }

  public static boolean expression_0(PsiBuilder b, int l, int g) {
    if (!recursion_guard_(b, l, "expression_0")) return false;
    boolean r = true;
    while (true) {
      Marker m = enter_section_(b, l, _LEFT_, null);
      if (g < 0 && consumeTokenSmart(b, ASSIGN)) {
        r = expression(b, l, -1);
        exit_section_(b, l, m, ASSIGN_EXPRESSION, r, true, null);
      }
      else if (g < 1 && conditionalExpression_0(b, l + 1)) {
        r = expression(b, l, 1);
        exit_section_(b, l, m, CONDITIONAL_EXPRESSION, r, true, null);
      }
      else if (g < 2 && consumeTokenSmart(b, PLUS)) {
        r = expression(b, l, 2);
        exit_section_(b, l, m, PLUS_EXPRESSION, r, true, null);
      }
      else if (g < 2 && consumeTokenSmart(b, MINUS)) {
        r = expression(b, l, 2);
        exit_section_(b, l, m, MINUS_EXPRESSION, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, AND)) {
        r = expression(b, l, 3);
        exit_section_(b, l, m, AND_EXPRESSION, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, OR)) {
        r = expression(b, l, 3);
        exit_section_(b, l, m, OR_EXPRESSION, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, MUL)) {
        r = expression(b, l, 4);
        exit_section_(b, l, m, MUL_EXPRESSION, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, DIV)) {
        r = expression(b, l, 4);
        exit_section_(b, l, m, DIV_EXPRESSION, r, true, null);
      }
      else if (g < 6 && leftMarkerIs(b, REF_EXPRESSION) && callParamenters(b, l + 1)) {
        r = true;
        exit_section_(b, l, m, CALL_EXPRESSION, r, true, null);
      }
      else if (g < 7 && parseTokensSmart(b, 0, DOT, IDENTIFIER)) {
        r = true;
        exit_section_(b, l, m, REF_EXPRESSION, r, true, null);
      }
      else {
        exit_section_(b, l, m, null, false, false, null);
        break;
      }
    }
    return r;
  }

  // LT | RT | LT_EQ | RT_EQ | EQ_EQ | NEQ
  private static boolean conditionalExpression_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "conditionalExpression_0")) return false;
    boolean r;
    r = consumeTokenSmart(b, LT);
    if (!r) r = consumeTokenSmart(b, RT);
    if (!r) r = consumeTokenSmart(b, LT_EQ);
    if (!r) r = consumeTokenSmart(b, RT_EQ);
    if (!r) r = consumeTokenSmart(b, EQ_EQ);
    if (!r) r = consumeTokenSmart(b, NEQ);
    return r;
  }

  public static boolean plusUnaryExpression(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "plusUnaryExpression")) return false;
    if (!nextTokenIsSmart(b, PLUS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, PLUS);
    p = r;
    r = p && expression(b, l, 5);
    exit_section_(b, l, m, PLUS_UNARY_EXPRESSION, r, p, null);
    return r || p;
  }

  public static boolean minusUnaryExpression(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "minusUnaryExpression")) return false;
    if (!nextTokenIsSmart(b, MINUS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, MINUS);
    p = r;
    r = p && expression(b, l, 5);
    exit_section_(b, l, m, MINUS_UNARY_EXPRESSION, r, p, null);
    return r || p;
  }

  public static boolean notUnaryExpression(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "notUnaryExpression")) return false;
    if (!nextTokenIsSmart(b, NOT)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, NOT);
    p = r;
    r = p && expression(b, l, 5);
    exit_section_(b, l, m, NOT_UNARY_EXPRESSION, r, p, null);
    return r || p;
  }

  // IDENTIFIER
  public static boolean refSimpleExpression(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "refSimpleExpression")) return false;
    if (!nextTokenIsSmart(b, IDENTIFIER)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokenSmart(b, IDENTIFIER);
    exit_section_(b, m, REF_EXPRESSION, r);
    return r;
  }

  // INTEGER | REAL | RAWCODE | HEX | STRING | TRUE | FALSE
  public static boolean literalExpression(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "literalExpression")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, LITERAL_EXPRESSION, "<literal expression>");
    r = consumeTokenSmart(b, INTEGER);
    if (!r) r = consumeTokenSmart(b, REAL);
    if (!r) r = consumeTokenSmart(b, RAWCODE);
    if (!r) r = consumeTokenSmart(b, HEX);
    if (!r) r = consumeTokenSmart(b, STRING);
    if (!r) r = consumeTokenSmart(b, TRUE);
    if (!r) r = consumeTokenSmart(b, FALSE);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  public static boolean parenExpression(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "parenExpression")) return false;
    if (!nextTokenIsSmart(b, LPAREN)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, LPAREN);
    p = r;
    r = p && expression(b, l, -1);
    r = p && report_error_(b, consumeToken(b, RPAREN)) && r;
    exit_section_(b, l, m, PAREN_EXPRESSION, r, p, null);
    return r || p;
  }

}
