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
    b = adapt_builder_(t, b, this, null);
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
  public static boolean functionDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "functionDeclaration")) return false;
    if (!nextTokenIs(b, IDENTIFIER)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, IDENTIFIER);
    exit_section_(b, m, FUNCTION_DECLARATION, r);
    return r;
  }

  /* ********************************************************** */
  // KEYWORD_CONSTANT? KEYWORD_NATIVE functionDeclaration KEYWORD_TAKES (KEYWORD_NOTHING|argumentDelaration (COMMA argumentDelaration)*) KEYWORD_RETURNS (KEYWORD_NOTHING|type)
  public static boolean nativeDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration")) return false;
    if (!nextTokenIs(b, "<native declaration>", KEYWORD_CONSTANT, KEYWORD_NATIVE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, NATIVE_DECLARATION, "<native declaration>");
    r = nativeDeclaration_0(b, l + 1);
    r = r && consumeToken(b, KEYWORD_NATIVE);
    p = r; // pin = 2
    r = r && report_error_(b, functionDeclaration(b, l + 1));
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
  // |SINGLE_LINE_COMMENT
  private static boolean script_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "script_0")) return false;
    boolean r;
    r = typeDeclaration(b, l + 1);
    if (!r) r = nativeDeclaration(b, l + 1);
    if (!r) r = consumeToken(b, SINGLE_LINE_COMMENT);
    return r;
  }

  /* ********************************************************** */
  // !(KEYWORD_TYPE|KEYWORD_CONSTANT|KEYWORD_NATIVE|SINGLE_LINE_COMMENT)
  static boolean scriptRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "scriptRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !scriptRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // KEYWORD_TYPE|KEYWORD_CONSTANT|KEYWORD_NATIVE|SINGLE_LINE_COMMENT
  private static boolean scriptRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "scriptRecover_0")) return false;
    boolean r;
    r = consumeToken(b, KEYWORD_TYPE);
    if (!r) r = consumeToken(b, KEYWORD_CONSTANT);
    if (!r) r = consumeToken(b, KEYWORD_NATIVE);
    if (!r) r = consumeToken(b, SINGLE_LINE_COMMENT);
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

}
