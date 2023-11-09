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
  // KEYWORD_CONSTANT? KEYWORD_NATIVE IDENTIFIER KEYWORD_TAKES (KEYWORD_NOTHING|variableDeclaration (COMMA variableDeclaration)*) KEYWORD_RETURNS (KEYWORD_NOTHING|IDENTIFIER)
  public static boolean nativeDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration")) return false;
    if (!nextTokenIs(b, "<native declaration>", KEYWORD_CONSTANT, KEYWORD_NATIVE)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, NATIVE_DECLARATION, "<native declaration>");
    r = nativeDeclaration_0(b, l + 1);
    r = r && consumeTokens(b, 0, KEYWORD_NATIVE, IDENTIFIER, KEYWORD_TAKES);
    r = r && nativeDeclaration_4(b, l + 1);
    r = r && consumeToken(b, KEYWORD_RETURNS);
    r = r && nativeDeclaration_6(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // KEYWORD_CONSTANT?
  private static boolean nativeDeclaration_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_0")) return false;
    consumeToken(b, KEYWORD_CONSTANT);
    return true;
  }

  // KEYWORD_NOTHING|variableDeclaration (COMMA variableDeclaration)*
  private static boolean nativeDeclaration_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_4")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, KEYWORD_NOTHING);
    if (!r) r = nativeDeclaration_4_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // variableDeclaration (COMMA variableDeclaration)*
  private static boolean nativeDeclaration_4_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_4_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = variableDeclaration(b, l + 1);
    r = r && nativeDeclaration_4_1_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (COMMA variableDeclaration)*
  private static boolean nativeDeclaration_4_1_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_4_1_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!nativeDeclaration_4_1_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "nativeDeclaration_4_1_1", c)) break;
    }
    return true;
  }

  // COMMA variableDeclaration
  private static boolean nativeDeclaration_4_1_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_4_1_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && variableDeclaration(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // KEYWORD_NOTHING|IDENTIFIER
  private static boolean nativeDeclaration_6(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "nativeDeclaration_6")) return false;
    boolean r;
    r = consumeToken(b, KEYWORD_NOTHING);
    if (!r) r = consumeToken(b, IDENTIFIER);
    return r;
  }

  /* ********************************************************** */
  // (typeDeclaration|nativeDeclaration|SINGLE_LINE_COMMENT)*
  static boolean script(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "script")) return false;
    while (true) {
      int c = current_position_(b);
      if (!script_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "script", c)) break;
    }
    return true;
  }

  // typeDeclaration|nativeDeclaration|SINGLE_LINE_COMMENT
  private static boolean script_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "script_0")) return false;
    boolean r;
    r = typeDeclaration(b, l + 1);
    if (!r) r = nativeDeclaration(b, l + 1);
    if (!r) r = consumeToken(b, SINGLE_LINE_COMMENT);
    return r;
  }

  /* ********************************************************** */
  // KEYWORD_TYPE IDENTIFIER KEYWORD_EXTENDS IDENTIFIER SINGLE_LINE_COMMENT*
  public static boolean typeDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "typeDeclaration")) return false;
    if (!nextTokenIs(b, KEYWORD_TYPE)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, KEYWORD_TYPE, IDENTIFIER, KEYWORD_EXTENDS, IDENTIFIER);
    r = r && typeDeclaration_4(b, l + 1);
    exit_section_(b, m, TYPE_DECLARATION, r);
    return r;
  }

  // SINGLE_LINE_COMMENT*
  private static boolean typeDeclaration_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "typeDeclaration_4")) return false;
    while (true) {
      int c = current_position_(b);
      if (!consumeToken(b, SINGLE_LINE_COMMENT)) break;
      if (!empty_element_parsed_guard_(b, "typeDeclaration_4", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // IDENTIFIER IDENTIFIER
  static boolean variableDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "variableDeclaration")) return false;
    if (!nextTokenIs(b, IDENTIFIER)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, IDENTIFIER, IDENTIFIER);
    exit_section_(b, m, null, r);
    return r;
  }

}
