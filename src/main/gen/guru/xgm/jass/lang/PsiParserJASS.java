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
    return script(b, l + 1);
  }

  public static final TokenSet[] EXTENDS_SETS_ = new TokenSet[] {
    create_token_set_(ADDITION_EXPRESSION, EXPRESSION, PRIMARY_TERM_EXPRESSION),
  };

  /* ********************************************************** */
  // multiplication ((PLUS|MINUS) multiplication)*
  public static boolean additionExpression(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "additionExpression")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, ADDITION_EXPRESSION, "<addition expression>");
    r = multiplication(b, l + 1);
    r = r && additionExpression_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // ((PLUS|MINUS) multiplication)*
  private static boolean additionExpression_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "additionExpression_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!additionExpression_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "additionExpression_1", c)) break;
    }
    return true;
  }

  // (PLUS|MINUS) multiplication
  private static boolean additionExpression_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "additionExpression_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = additionExpression_1_0_0(b, l + 1);
    r = r && multiplication(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // PLUS|MINUS
  private static boolean additionExpression_1_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "additionExpression_1_0_0")) return false;
    boolean r;
    r = consumeToken(b, PLUS);
    if (!r) r = consumeToken(b, MINUS);
    return r;
  }

  /* ********************************************************** */
  // type variable
  public static boolean argumentDelaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "argumentDelaration")) return false;
    if (!nextTokenIs(b, IDENTIFIER)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = type(b, l + 1);
    r = r && variable(b, l + 1);
    exit_section_(b, m, ARGUMENT_DELARATION, r);
    return r;
  }

  /* ********************************************************** */
  // additionExpression ((AND|OR) additionExpression)*
  public static boolean expression(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "expression")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _COLLAPSE_, EXPRESSION, "<expression>");
    r = additionExpression(b, l + 1);
    r = r && expression_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // ((AND|OR) additionExpression)*
  private static boolean expression_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "expression_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!expression_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "expression_1", c)) break;
    }
    return true;
  }

  // (AND|OR) additionExpression
  private static boolean expression_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "expression_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = expression_1_0_0(b, l + 1);
    r = r && additionExpression(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // AND|OR
  private static boolean expression_1_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "expression_1_0_0")) return false;
    boolean r;
    r = consumeToken(b, AND);
    if (!r) r = consumeToken(b, OR);
    return r;
  }

  /* ********************************************************** */
  // IDENTIFIER LPAREN (expression (COMMA expression)*)? RPAREN
  public static boolean functionCall(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionCall")) return false;
    if (!nextTokenIs(b, IDENTIFIER)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNCTION_CALL, null);
    r = consumeTokens(b, 1, IDENTIFIER, LPAREN);
    p = r; // pin = 1
    r = r && report_error_(b, functionCall_2(b, l + 1));
    r = p && consumeToken(b, RPAREN) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // (expression (COMMA expression)*)?
  private static boolean functionCall_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionCall_2")) return false;
    functionCall_2_0(b, l + 1);
    return true;
  }

  // expression (COMMA expression)*
  private static boolean functionCall_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionCall_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = expression(b, l + 1);
    r = r && functionCall_2_0_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (COMMA expression)*
  private static boolean functionCall_2_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionCall_2_0_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!functionCall_2_0_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "functionCall_2_0_1", c)) break;
    }
    return true;
  }

  // COMMA expression
  private static boolean functionCall_2_0_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionCall_2_0_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && expression(b, l + 1);
    exit_section_(b, m, null, r);
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
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, GLOBALS_DECLARATION, null);
    r = consumeToken(b, KEYWORD_GLOBALS);
    p = r; // pin = 1
    r = r && report_error_(b, globalsDeclaration_1(b, l + 1));
    r = p && consumeToken(b, KEYWORD_ENDGLOBALS) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
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
  // primary ((MUL|DIV) primary)*
  public static boolean multiplication(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "multiplication")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, MULTIPLICATION, "<multiplication>");
    r = primary(b, l + 1);
    r = r && multiplication_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // ((MUL|DIV) primary)*
  private static boolean multiplication_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "multiplication_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!multiplication_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "multiplication_1", c)) break;
    }
    return true;
  }

  // (MUL|DIV) primary
  private static boolean multiplication_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "multiplication_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = multiplication_1_0_0(b, l + 1);
    r = r && primary(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // MUL|DIV
  private static boolean multiplication_1_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "multiplication_1_0_0")) return false;
    boolean r;
    r = consumeToken(b, MUL);
    if (!r) r = consumeToken(b, DIV);
    return r;
  }

  /* ********************************************************** */
  // KEYWORD_CONSTANT? KEYWORD_NATIVE functionName KEYWORD_TAKES (KEYWORD_NOTHING|argumentDelaration (COMMA argumentDelaration)*) KEYWORD_RETURNS (KEYWORD_NOTHING|type)
  public static boolean nativeDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration")) return false;
    if (!nextTokenIs(b, "<native declaration>", KEYWORD_CONSTANT, KEYWORD_NATIVE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, NATIVE_DECLARATION, "<native declaration>");
    r = nativeDeclaration_0(b, l + 1);
    r = r && consumeToken(b, KEYWORD_NATIVE);
    p = r; // pin = 2
    r = r && report_error_(b, functionName(b, l + 1));
    r = p && report_error_(b, consumeToken(b, KEYWORD_TAKES)) && r;
    r = p && report_error_(b, nativeDeclaration_4(b, l + 1)) && r;
    r = p && report_error_(b, consumeToken(b, KEYWORD_RETURNS)) && r;
    r = p && nativeDeclaration_6(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // KEYWORD_CONSTANT?
  private static boolean nativeDeclaration_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_0")) return false;
    consumeToken(b, KEYWORD_CONSTANT);
    return true;
  }

  // KEYWORD_NOTHING|argumentDelaration (COMMA argumentDelaration)*
  private static boolean nativeDeclaration_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_4")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, KEYWORD_NOTHING);
    if (!r) r = nativeDeclaration_4_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // argumentDelaration (COMMA argumentDelaration)*
  private static boolean nativeDeclaration_4_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_4_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = argumentDelaration(b, l + 1);
    r = r && nativeDeclaration_4_1_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (COMMA argumentDelaration)*
  private static boolean nativeDeclaration_4_1_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_4_1_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!nativeDeclaration_4_1_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "nativeDeclaration_4_1_1", c)) break;
    }
    return true;
  }

  // COMMA argumentDelaration
  private static boolean nativeDeclaration_4_1_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_4_1_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && argumentDelaration(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // KEYWORD_NOTHING|type
  private static boolean nativeDeclaration_6(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_6")) return false;
    boolean r;
    r = consumeToken(b, KEYWORD_NOTHING);
    if (!r) r = type(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // primaryTermExpression | not primary
  public static boolean primary(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "primary")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, PRIMARY, "<primary>");
    r = primaryTermExpression(b, l + 1);
    if (!r) r = primary_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // not primary
  private static boolean primary_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "primary_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, NOT);
    r = r && primary(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // MINUS? INTEGER|functionCall|IDENTIFIER
  public static boolean primaryTermExpression(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "primaryTermExpression")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, PRIMARY_TERM_EXPRESSION, "<primary term expression>");
    r = primaryTermExpression_0(b, l + 1);
    if (!r) r = functionCall(b, l + 1);
    if (!r) r = consumeToken(b, IDENTIFIER);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // MINUS? INTEGER
  private static boolean primaryTermExpression_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "primaryTermExpression_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = primaryTermExpression_0_0(b, l + 1);
    r = r && consumeToken(b, INTEGER);
    exit_section_(b, m, null, r);
    return r;
  }

  // MINUS?
  private static boolean primaryTermExpression_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "primaryTermExpression_0_0")) return false;
    consumeToken(b, MINUS);
    return true;
  }

  /* ********************************************************** */
  // (
  // typeDeclaration
  // |nativeDeclaration
  // |globalsDeclaration
  // |SINGLE_LINE_COMMENT)*
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
  // |SINGLE_LINE_COMMENT
  private static boolean script_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "script_0")) return false;
    boolean r;
    r = typeDeclaration(b, l + 1);
    if (!r) r = nativeDeclaration(b, l + 1);
    if (!r) r = globalsDeclaration(b, l + 1);
    if (!r) r = consumeToken(b, SINGLE_LINE_COMMENT);
    return r;
  }

  /* ********************************************************** */
  // !(
  // KEYWORD_TYPE
  // |KEYWORD_CONSTANT
  // |KEYWORD_NATIVE
  // |KEYWORD_GLOBALS
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
  private static boolean scriptRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "scriptRecover_0")) return false;
    boolean r;
    r = consumeToken(b, KEYWORD_TYPE);
    if (!r) r = consumeToken(b, KEYWORD_CONSTANT);
    if (!r) r = consumeToken(b, KEYWORD_NATIVE);
    if (!r) r = consumeToken(b, KEYWORD_GLOBALS);
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
  // KEYWORD_CONSTANT? type variable (ASSIGN expression)?
  public static boolean variableDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variableDeclaration")) return false;
    if (!nextTokenIs(b, "<variable declaration>", IDENTIFIER, KEYWORD_CONSTANT)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, VARIABLE_DECLARATION, "<variable declaration>");
    r = variableDeclaration_0(b, l + 1);
    r = r && type(b, l + 1);
    r = r && variable(b, l + 1);
    p = r; // pin = 3
    r = r && variableDeclaration_3(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // KEYWORD_CONSTANT?
  private static boolean variableDeclaration_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variableDeclaration_0")) return false;
    consumeToken(b, KEYWORD_CONSTANT);
    return true;
  }

  // (ASSIGN expression)?
  private static boolean variableDeclaration_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variableDeclaration_3")) return false;
    variableDeclaration_3_0(b, l + 1);
    return true;
  }

  // ASSIGN expression
  private static boolean variableDeclaration_3_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variableDeclaration_3_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ASSIGN);
    r = r && expression(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

}
