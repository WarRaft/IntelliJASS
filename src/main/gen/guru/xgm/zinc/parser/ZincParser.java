// This is a generated file. Not intended for manual editing.
package guru.xgm.zinc.parser;

import com.intellij.lang.PsiBuilder;
import com.intellij.lang.PsiBuilder.Marker;
import static guru.xgm.zinc.psi.ZincTypes.*;
import static com.intellij.lang.parser.GeneratedParserUtilBase.*;
import com.intellij.psi.tree.IElementType;
import com.intellij.lang.ASTNode;
import com.intellij.psi.tree.TokenSet;
import com.intellij.lang.PsiParser;
import com.intellij.lang.LightPsiParser;

@SuppressWarnings({"SimplifiableIfStatement", "UnusedAssignment"})
public class ZincParser implements PsiParser, LightPsiParser {

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
    return Root(b, l + 1);
  }

  /* ********************************************************** */
  // LIBRARY ID
  public static boolean LibDecl(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibDecl")) return false;
    if (!nextTokenIs(b, LIBRARY)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LIB_DECL, null);
    r = consumeTokens(b, 1, LIBRARY, ID);
    p = r; // pin = 1
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // (LIBRARY)?
  static boolean Root(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root")) return false;
    consumeToken(b, LIBRARY);
    return true;
  }

}
