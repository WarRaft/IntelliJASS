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
  // (typeDeclaration|SINGLE_LINE_COMMENT)*
  static boolean script(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "script")) return false;
    while (true) {
      int c = current_position_(b);
      if (!script_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "script", c)) break;
    }
    return true;
  }

  // typeDeclaration|SINGLE_LINE_COMMENT
  private static boolean script_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "script_0")) return false;
    boolean r;
    r = typeDeclaration(b, l + 1);
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

}
