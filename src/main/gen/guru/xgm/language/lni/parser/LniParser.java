// This is a generated file. Not intended for manual editing.
package guru.xgm.language.lni.parser;

import com.intellij.lang.PsiBuilder;
import com.intellij.lang.PsiBuilder.Marker;
import static guru.xgm.language.lni.psi.LniTypes.*;
import static com.intellij.lang.parser.GeneratedParserUtilBase.*;
import com.intellij.psi.tree.IElementType;
import com.intellij.lang.ASTNode;
import com.intellij.psi.tree.TokenSet;
import com.intellij.lang.PsiParser;
import com.intellij.lang.LightPsiParser;

@SuppressWarnings({"SimplifiableIfStatement", "UnusedAssignment"})
public class LniParser implements PsiParser, LightPsiParser {

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
  // HEADVAL
  public static boolean Head(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Head")) return false;
    if (!nextTokenIs(b, HEADVAL)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, HEADVAL);
    exit_section_(b, m, HEAD, r);
    return r;
  }

  /* ********************************************************** */
  // (Head Property*)|(Head? Property)
  public static boolean Item(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Item")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, ITEM, "<item>");
    r = Item_0(b, l + 1);
    if (!r) r = Item_1(b, l + 1);
    exit_section_(b, l, m, r, false, LniParser::ItemRecovery);
    return r;
  }

  // Head Property*
  private static boolean Item_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Item_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Head(b, l + 1);
    r = r && Item_0_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // Property*
  private static boolean Item_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Item_0_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Property(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Item_0_1", c)) break;
    }
    return true;
  }

  // Head? Property
  private static boolean Item_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Item_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Item_1_0(b, l + 1);
    r = r && Property(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // Head?
  private static boolean Item_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Item_1_0")) return false;
    Head(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // !(HEADVAL)
  static boolean ItemRecovery(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ItemRecovery")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !consumeToken(b, HEADVAL);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // LBRACE ListItem (COMMA ListItem)* COMMA* RBRACE
  public static boolean List(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "List")) return false;
    if (!nextTokenIs(b, LBRACE)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, LBRACE);
    r = r && ListItem(b, l + 1);
    r = r && List_2(b, l + 1);
    r = r && List_3(b, l + 1);
    r = r && consumeToken(b, RBRACE);
    exit_section_(b, m, LIST, r);
    return r;
  }

  // (COMMA ListItem)*
  private static boolean List_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "List_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!List_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "List_2", c)) break;
    }
    return true;
  }

  // COMMA ListItem
  private static boolean List_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "List_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && ListItem(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // COMMA*
  private static boolean List_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "List_3")) return false;
    while (true) {
      int c = current_position_(b);
      if (!consumeToken(b, COMMA)) break;
      if (!empty_element_parsed_guard_(b, "List_3", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // (INTVAL EQ Prim)|Prim
  public static boolean ListItem(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ListItem")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, LIST_ITEM, "<list item>");
    r = ListItem_0(b, l + 1);
    if (!r) r = Prim(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // INTVAL EQ Prim
  private static boolean ListItem_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ListItem_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, INTVAL, EQ);
    r = r && Prim(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // MINUS* (INTVAL|REALVAL)
  public static boolean Number(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Number")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, NUMBER, "<number>");
    r = Number_0(b, l + 1);
    r = r && Number_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // MINUS*
  private static boolean Number_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Number_0")) return false;
    while (true) {
      int c = current_position_(b);
      if (!consumeToken(b, MINUS)) break;
      if (!empty_element_parsed_guard_(b, "Number_0", c)) break;
    }
    return true;
  }

  // INTVAL|REALVAL
  private static boolean Number_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Number_1")) return false;
    boolean r;
    r = consumeToken(b, INTVAL);
    if (!r) r = consumeToken(b, REALVAL);
    return r;
  }

  /* ********************************************************** */
  // String|Number
  public static boolean Prim(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Prim")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, PRIM, "<prim>");
    r = String(b, l + 1);
    if (!r) r = Number(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // ID EQ (Prim|List)
  public static boolean Property(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Property")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, ID, EQ);
    r = r && Property_2(b, l + 1);
    exit_section_(b, m, PROPERTY, r);
    return r;
  }

  // Prim|List
  private static boolean Property_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Property_2")) return false;
    boolean r;
    r = Prim(b, l + 1);
    if (!r) r = List(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // Item*
  static boolean Root(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Item(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Root", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // STRVAL|STRVAL_MULT
  public static boolean String(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "String")) return false;
    if (!nextTokenIs(b, "<string>", STRVAL, STRVAL_MULT)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, STRING, "<string>");
    r = consumeToken(b, STRVAL);
    if (!r) r = consumeToken(b, STRVAL_MULT);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

}
