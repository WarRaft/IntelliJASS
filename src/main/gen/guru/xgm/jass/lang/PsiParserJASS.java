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
    if (t == EXPR) {
      r = expr(b, l + 1, -1);
    }
    else {
      r = script(b, l + 1);
    }
    return r;
  }

  public static final TokenSet[] EXTENDS_SETS_ = new TokenSet[] {
    create_token_set_(ASSIGN_EXPR, BETWEEN_EXPR, CALL_EXPR, CONDITIONAL_EXPR,
      DIV_EXPR, ELVIS_EXPR, EXPR, EXP_EXPR,
      FACTORIAL_EXPR, IS_NOT_EXPR, LITERAL_EXPR, MINUS_EXPR,
      MUL_EXPR, PAREN_EXPR, PLUS_EXPR, REF_EXPR,
      UNARY_MIN_EXPR, UNARY_NOT_EXPR, UNARY_PLUS_EXPR, XOR_EXPR),
  };

  /* ********************************************************** */
  // '(' [ !')' expr  (',' expr) * ] ')'
  public static boolean arg_list(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "arg_list")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, ARG_LIST, "<arg list>");
    r = consumeToken(b, "(");
    p = r; // pin = 1
    r = r && report_error_(b, arg_list_1(b, l + 1));
    r = p && consumeToken(b, ")") && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // [ !')' expr  (',' expr) * ]
  private static boolean arg_list_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "arg_list_1")) return false;
    arg_list_1_0(b, l + 1);
    return true;
  }

  // !')' expr  (',' expr) *
  private static boolean arg_list_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "arg_list_1_0")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_);
    r = arg_list_1_0_0(b, l + 1);
    p = r; // pin = 1
    r = r && report_error_(b, expr(b, l + 1, -1));
    r = p && arg_list_1_0_2(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // !')'
  private static boolean arg_list_1_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "arg_list_1_0_0")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !consumeToken(b, ")");
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (',' expr) *
  private static boolean arg_list_1_0_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "arg_list_1_0_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!arg_list_1_0_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "arg_list_1_0_2", c)) break;
    }
    return true;
  }

  // ',' expr
  private static boolean arg_list_1_0_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "arg_list_1_0_2_0")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_);
    r = consumeToken(b, ",");
    p = r; // pin = 1
    r = r && expr(b, l + 1, -1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
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
  // KEYWORD_CONSTANT? type variable (ASSIGN expr)?
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

  // (ASSIGN expr)?
  private static boolean variableDeclaration_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variableDeclaration_3")) return false;
    variableDeclaration_3_0(b, l + 1);
    return true;
  }

  // ASSIGN expr
  private static boolean variableDeclaration_3_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variableDeclaration_3_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ASSIGN);
    r = r && expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // Expression root: expr
  // Operator priority table:
  // 0: BINARY(assign_expr)
  // 1: BINARY(elvis_expr) BINARY(conditional_expr)
  // 2: BINARY(plus_expr) BINARY(minus_expr)
  // 3: BINARY(xor_expr) BINARY(between_expr) BINARY(is_not_expr)
  // 4: BINARY(mul_expr) BINARY(div_expr)
  // 5: PREFIX(unary_plus_expr) PREFIX(unary_min_expr) PREFIX(unary_not_expr)
  // 6: N_ARY(exp_expr)
  // 7: POSTFIX(factorial_expr)
  // 8: POSTFIX(call_expr)
  // 9: POSTFIX(qualification_expr)
  // 10: ATOM(simple_ref_expr) ATOM(literal_expr) PREFIX(paren_expr)
  public static boolean expr(PsiBuilder b, int l, int g) {
    if (!recursion_guard_(b, l, "expr")) return false;
    addVariant(b, "<expr>");
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, "<expr>");
    r = unary_plus_expr(b, l + 1);
    if (!r) r = unary_min_expr(b, l + 1);
    if (!r) r = unary_not_expr(b, l + 1);
    if (!r) r = simple_ref_expr(b, l + 1);
    if (!r) r = literal_expr(b, l + 1);
    if (!r) r = paren_expr(b, l + 1);
    p = r;
    r = r && expr_0(b, l + 1, g);
    exit_section_(b, l, m, null, r, p, null);
    return r || p;
  }

  public static boolean expr_0(PsiBuilder b, int l, int g) {
    if (!recursion_guard_(b, l, "expr_0")) return false;
    boolean r = true;
    while (true) {
      Marker m = enter_section_(b, l, _LEFT_, null);
      if (g < 0 && consumeTokenSmart(b, "=")) {
        r = expr(b, l, -1);
        exit_section_(b, l, m, ASSIGN_EXPR, r, true, null);
      }
      else if (g < 1 && consumeTokenSmart(b, "?")) {
        r = report_error_(b, expr(b, l, 1));
        r = elvis_expr_1(b, l + 1) && r;
        exit_section_(b, l, m, ELVIS_EXPR, r, true, null);
      }
      else if (g < 1 && conditional_expr_0(b, l + 1)) {
        r = expr(b, l, 1);
        exit_section_(b, l, m, CONDITIONAL_EXPR, r, true, null);
      }
      else if (g < 2 && consumeTokenSmart(b, PLUS)) {
        r = expr(b, l, 2);
        exit_section_(b, l, m, PLUS_EXPR, r, true, null);
      }
      else if (g < 2 && consumeTokenSmart(b, MINUS)) {
        r = expr(b, l, 2);
        exit_section_(b, l, m, MINUS_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, "^")) {
        r = expr(b, l, 3);
        exit_section_(b, l, m, XOR_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, BETWEEN)) {
        r = report_error_(b, expr(b, l, 1));
        r = between_expr_1(b, l + 1) && r;
        exit_section_(b, l, m, BETWEEN_EXPR, r, true, null);
      }
      else if (g < 3 && parseTokensSmart(b, 0, IS, NOT)) {
        r = expr(b, l, 3);
        exit_section_(b, l, m, IS_NOT_EXPR, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, MUL)) {
        r = expr(b, l, 4);
        exit_section_(b, l, m, MUL_EXPR, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, DIV)) {
        r = expr(b, l, 4);
        exit_section_(b, l, m, DIV_EXPR, r, true, null);
      }
      else if (g < 7 && consumeTokenSmart(b, "!")) {
        r = true;
        exit_section_(b, l, m, FACTORIAL_EXPR, r, true, null);
      }
      else if (g < 6 && consumeTokenSmart(b, "**")) {
        while (true) {
          r = report_error_(b, expr(b, l, 6));
          if (!consumeTokenSmart(b, "**")) break;
        }
        exit_section_(b, l, m, EXP_EXPR, r, true, null);
      }
      else if (g < 8 && leftMarkerIs(b, REF_EXPR) && arg_list(b, l + 1)) {
        r = true;
        exit_section_(b, l, m, CALL_EXPR, r, true, null);
      }
      else if (g < 9 && qualification_expr_0(b, l + 1)) {
        r = true;
        exit_section_(b, l, m, REF_EXPR, r, true, null);
      }
      else {
        exit_section_(b, l, m, null, false, false, null);
        break;
      }
    }
    return r;
  }

  // ':' expr
  private static boolean elvis_expr_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "elvis_expr_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ":");
    r = r && expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  // '<' | '>' | '<=' | '>=' | '==' | '!='
  private static boolean conditional_expr_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "conditional_expr_0")) return false;
    boolean r;
    r = consumeTokenSmart(b, "<");
    if (!r) r = consumeTokenSmart(b, ">");
    if (!r) r = consumeTokenSmart(b, "<=");
    if (!r) r = consumeTokenSmart(b, ">=");
    if (!r) r = consumeTokenSmart(b, EQUAL);
    if (!r) r = consumeTokenSmart(b, NOT_EQUAL);
    return r;
  }

  public static boolean unary_plus_expr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "unary_plus_expr")) return false;
    if (!nextTokenIsSmart(b, PLUS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, PLUS);
    p = r;
    r = p && expr(b, l, 5);
    exit_section_(b, l, m, UNARY_PLUS_EXPR, r, p, null);
    return r || p;
  }

  public static boolean unary_min_expr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "unary_min_expr")) return false;
    if (!nextTokenIsSmart(b, MINUS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, MINUS);
    p = r;
    r = p && expr(b, l, 5);
    exit_section_(b, l, m, UNARY_MIN_EXPR, r, p, null);
    return r || p;
  }

  // AND add_group
  private static boolean between_expr_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "between_expr_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, AND);
    r = r && expr(b, l + 1, 1);
    exit_section_(b, m, null, r);
    return r;
  }

  public static boolean unary_not_expr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "unary_not_expr")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, "!");
    p = r;
    r = p && expr(b, l, 5);
    exit_section_(b, l, m, UNARY_NOT_EXPR, r, p, null);
    return r || p;
  }

  // '.' IDENTIFIER
  private static boolean qualification_expr_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "qualification_expr_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokenSmart(b, ".");
    r = r && consumeToken(b, IDENTIFIER);
    exit_section_(b, m, null, r);
    return r;
  }

  // IDENTIFIER
  public static boolean simple_ref_expr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "simple_ref_expr")) return false;
    if (!nextTokenIsSmart(b, IDENTIFIER)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokenSmart(b, IDENTIFIER);
    exit_section_(b, m, REF_EXPR, r);
    return r;
  }

  // INTEGER
  public static boolean literal_expr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "literal_expr")) return false;
    if (!nextTokenIsSmart(b, INTEGER)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokenSmart(b, INTEGER);
    exit_section_(b, m, LITERAL_EXPR, r);
    return r;
  }

  public static boolean paren_expr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "paren_expr")) return false;
    if (!nextTokenIsSmart(b, LPAREN)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, LPAREN);
    p = r;
    r = p && expr(b, l, -1);
    r = p && report_error_(b, consumeToken(b, RPAREN)) && r;
    exit_section_(b, l, m, PAREN_EXPR, r, p, null);
    return r || p;
  }

}
