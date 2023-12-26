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

@SuppressWarnings({"SimplifiableIfStatement"})
public class ZincParser implements PsiParser, LightPsiParser {

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
    return Root(b, l + 1);
  }

  public static final TokenSet[] EXTENDS_SETS_ = new TokenSet[] {
    create_token_set_(AND_EXPR, DIV_EXPR, DIV_UNARY_EXPR, DOT_EXPR,
      EQ_EXPR, EXPR, FOR_EXPR, GT_EQ_EXPR,
      GT_EXPR, LT_EQ_EXPR, LT_EXPR, MINUS_EXPR,
      MINUS_UNARY_EXPR, MUL_EXPR, MUL_UNARY_EXPR, NOT_EXPR,
      N_EQ_EXPR, OR_EXPR, PAREN_EXPR, PLUS_EXPR,
      PLUS_UNARY_EXPR, PRIMARY_EXPR),
  };

  /* ********************************************************** */
  // Expr|FuncAsCode|FuncAnon
  public static boolean Arg(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Arg")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, ARG, "<arg>");
    r = Expr(b, l + 1, -1);
    if (!r) r = FuncAsCode(b, l + 1);
    if (!r) r = FuncAnon(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // Arg (COMMA Arg)*
  public static boolean ArgList(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, ARG_LIST, "<arg list>");
    r = Arg(b, l + 1);
    r = r && ArgList_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (COMMA Arg)*
  private static boolean ArgList_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!ArgList_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ArgList_1", c)) break;
    }
    return true;
  }

  // COMMA Arg
  private static boolean ArgList_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && Arg(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // ID ArrayAccessItem ArrayAccessItem*
  public static boolean ArrayAccess(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArrayAccess")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    r = r && ArrayAccessItem(b, l + 1);
    r = r && ArrayAccess_2(b, l + 1);
    exit_section_(b, m, ARRAY_ACCESS, r);
    return r;
  }

  // ArrayAccessItem*
  private static boolean ArrayAccess_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArrayAccess_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!ArrayAccessItem(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ArrayAccess_2", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // LBRACK Expr? RBRACK
  public static boolean ArrayAccessItem(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArrayAccessItem")) return false;
    if (!nextTokenIs(b, LBRACK)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, ARRAY_ACCESS_ITEM, null);
    r = consumeToken(b, LBRACK);
    p = r; // pin = 1
    r = r && report_error_(b, ArrayAccessItem_1(b, l + 1));
    r = p && consumeToken(b, RBRACK) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Expr?
  private static boolean ArrayAccessItem_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArrayAccessItem_1")) return false;
    Expr(b, l + 1, -1);
    return true;
  }

  /* ********************************************************** */
  // LBRACE Stmt* RBRACE
  public static boolean BracedStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "BracedStmt")) return false;
    if (!nextTokenIs(b, LBRACE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, BRACED_STMT, null);
    r = consumeToken(b, LBRACE);
    p = r; // pin = 1
    r = r && report_error_(b, BracedStmt_1(b, l + 1));
    r = p && consumeToken(b, RBRACE) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Stmt*
  private static boolean BracedStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "BracedStmt_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Stmt(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "BracedStmt_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // BREAK SEMI?
  public static boolean BreakStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "BreakStmt")) return false;
    if (!nextTokenIs(b, BREAK)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, BREAK_STMT, null);
    r = consumeToken(b, BREAK);
    p = r; // pin = 1
    r = r && BreakStmt_1(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // SEMI?
  private static boolean BreakStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "BreakStmt_1")) return false;
    consumeToken(b, SEMI);
    return true;
  }

  /* ********************************************************** */
  // DEBUG? FuncCall SEMI?
  public static boolean CallStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt")) return false;
    if (!nextTokenIs(b, "<call stmt>", DEBUG, ID)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, CALL_STMT, "<call stmt>");
    r = CallStmt_0(b, l + 1);
    r = r && FuncCall(b, l + 1);
    r = r && CallStmt_2(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // DEBUG?
  private static boolean CallStmt_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt_0")) return false;
    consumeToken(b, DEBUG);
    return true;
  }

  // SEMI?
  private static boolean CallStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt_2")) return false;
    consumeToken(b, SEMI);
    return true;
  }

  /* ********************************************************** */
  // DO (Stmt|BracedStmt) WHILE LPAREN Expr RPAREN SEMI?
  public static boolean DoStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "DoStmt")) return false;
    if (!nextTokenIs(b, DO)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, DO_STMT, null);
    r = consumeToken(b, DO);
    p = r; // pin = 1
    r = r && report_error_(b, DoStmt_1(b, l + 1));
    r = p && report_error_(b, consumeTokens(b, -1, WHILE, LPAREN)) && r;
    r = p && report_error_(b, Expr(b, l + 1, -1)) && r;
    r = p && report_error_(b, consumeToken(b, RPAREN)) && r;
    r = p && DoStmt_6(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Stmt|BracedStmt
  private static boolean DoStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "DoStmt_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Stmt(b, l + 1);
    if (!r) r = BracedStmt(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // SEMI?
  private static boolean DoStmt_6(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "DoStmt_6")) return false;
    consumeToken(b, SEMI);
    return true;
  }

  /* ********************************************************** */
  // ELSE (Stmt|BracedStmt)
  public static boolean ElseStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseStmt")) return false;
    if (!nextTokenIs(b, ELSE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, ELSE_STMT, null);
    r = consumeToken(b, ELSE);
    p = r; // pin = 1
    r = r && ElseStmt_1(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Stmt|BracedStmt
  private static boolean ElseStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseStmt_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Stmt(b, l + 1);
    if (!r) r = BracedStmt(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // PrimaryExpr
  public static boolean ForExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ForExpr")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _COLLAPSE_, FOR_EXPR, "<for expr>");
    r = PrimaryExpr(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // LPAREN ForExpr ForOp ID ForOp ForExpr RPAREN
  public static boolean ForHead(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ForHead")) return false;
    if (!nextTokenIs(b, LPAREN)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FOR_HEAD, null);
    r = consumeToken(b, LPAREN);
    p = r; // pin = 1
    r = r && report_error_(b, ForExpr(b, l + 1));
    r = p && report_error_(b, ForOp(b, l + 1)) && r;
    r = p && report_error_(b, consumeToken(b, ID)) && r;
    r = p && report_error_(b, ForOp(b, l + 1)) && r;
    r = p && report_error_(b, ForExpr(b, l + 1)) && r;
    r = p && consumeToken(b, RPAREN) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // LT|LT_EQ|GT|GT_EQ
  public static boolean ForOp(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ForOp")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, FOR_OP, "<for op>");
    r = consumeToken(b, LT);
    if (!r) r = consumeToken(b, LT_EQ);
    if (!r) r = consumeToken(b, GT);
    if (!r) r = consumeToken(b, GT_EQ);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // FOR ForHead (Stmt|BracedStmt)
  public static boolean ForStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ForStmt")) return false;
    if (!nextTokenIs(b, FOR)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FOR_STMT, null);
    r = consumeToken(b, FOR);
    p = r; // pin = 1
    r = r && report_error_(b, ForHead(b, l + 1));
    r = p && ForStmt_2(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Stmt|BracedStmt
  private static boolean ForStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ForStmt_2")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Stmt(b, l + 1);
    if (!r) r = BracedStmt(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // FUNCTION LPAREN TypedVarList? RPAREN FuncReturns? FuncBody
  public static boolean FuncAnon(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncAnon")) return false;
    if (!nextTokenIs(b, FUNCTION)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNC_ANON, null);
    r = consumeTokens(b, 2, FUNCTION, LPAREN);
    p = r; // pin = 2
    r = r && report_error_(b, FuncAnon_2(b, l + 1));
    r = p && report_error_(b, consumeToken(b, RPAREN)) && r;
    r = p && report_error_(b, FuncAnon_4(b, l + 1)) && r;
    r = p && FuncBody(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // TypedVarList?
  private static boolean FuncAnon_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncAnon_2")) return false;
    TypedVarList(b, l + 1);
    return true;
  }

  // FuncReturns?
  private static boolean FuncAnon_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncAnon_4")) return false;
    FuncReturns(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // FUNCTION FuncCallName
  public static boolean FuncAsCode(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncAsCode")) return false;
    if (!nextTokenIs(b, FUNCTION)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, FUNCTION);
    r = r && FuncCallName(b, l + 1);
    exit_section_(b, m, FUNC_AS_CODE, r);
    return r;
  }

  /* ********************************************************** */
  // LBRACE Stmt* RBRACE
  public static boolean FuncBody(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncBody")) return false;
    if (!nextTokenIs(b, LBRACE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNC_BODY, null);
    r = consumeToken(b, LBRACE);
    p = r; // pin = 1
    r = r && report_error_(b, FuncBody_1(b, l + 1));
    r = p && consumeToken(b, RBRACE) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Stmt*
  private static boolean FuncBody_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncBody_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Stmt(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "FuncBody_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // FuncCallName LPAREN ArgList? RPAREN StructAccess*
  public static boolean FuncCall(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncCall")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNC_CALL, null);
    r = FuncCallName(b, l + 1);
    r = r && consumeToken(b, LPAREN);
    p = r; // pin = 2
    r = r && report_error_(b, FuncCall_2(b, l + 1));
    r = p && report_error_(b, consumeToken(b, RPAREN)) && r;
    r = p && FuncCall_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // ArgList?
  private static boolean FuncCall_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncCall_2")) return false;
    ArgList(b, l + 1);
    return true;
  }

  // StructAccess*
  private static boolean FuncCall_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncCall_4")) return false;
    while (true) {
      int c = current_position_(b);
      if (!StructAccess(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "FuncCall_4", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // ID StructAccess*
  public static boolean FuncCallName(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncCallName")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    r = r && FuncCallName_1(b, l + 1);
    exit_section_(b, m, FUNC_CALL_NAME, r);
    return r;
  }

  // StructAccess*
  private static boolean FuncCallName_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncCallName_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!StructAccess(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "FuncCallName_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // CONSTANT? FUNCTION FuncDeclName LPAREN TypedVarList? RPAREN FuncReturns? FuncBody
  public static boolean FuncDecl(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDecl")) return false;
    if (!nextTokenIs(b, "<func decl>", CONSTANT, FUNCTION)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNC_DECL, "<func decl>");
    r = FuncDecl_0(b, l + 1);
    r = r && consumeToken(b, FUNCTION);
    r = r && FuncDeclName(b, l + 1);
    p = r; // pin = 3
    r = r && report_error_(b, consumeToken(b, LPAREN));
    r = p && report_error_(b, FuncDecl_4(b, l + 1)) && r;
    r = p && report_error_(b, consumeToken(b, RPAREN)) && r;
    r = p && report_error_(b, FuncDecl_6(b, l + 1)) && r;
    r = p && FuncBody(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // CONSTANT?
  private static boolean FuncDecl_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDecl_0")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  // TypedVarList?
  private static boolean FuncDecl_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDecl_4")) return false;
    TypedVarList(b, l + 1);
    return true;
  }

  // FuncReturns?
  private static boolean FuncDecl_6(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDecl_6")) return false;
    FuncReturns(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // ID
  public static boolean FuncDeclName(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDeclName")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    exit_section_(b, m, FUNC_DECL_NAME, r);
    return r;
  }

  /* ********************************************************** */
  // MINUS_GT (NOTHING|TypeName)
  public static boolean FuncReturns(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncReturns")) return false;
    if (!nextTokenIs(b, MINUS_GT)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNC_RETURNS, null);
    r = consumeToken(b, MINUS_GT);
    p = r; // pin = 1
    r = r && FuncReturns_1(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // NOTHING|TypeName
  private static boolean FuncReturns_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncReturns_1")) return false;
    boolean r;
    r = consumeToken(b, NOTHING);
    if (!r) r = TypeName(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // (ArrayAccess|ID) (EQ Expr)?
  public static boolean GvarBody(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarBody")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = GvarBody_0(b, l + 1);
    r = r && GvarBody_1(b, l + 1);
    exit_section_(b, m, GVAR_BODY, r);
    return r;
  }

  // ArrayAccess|ID
  private static boolean GvarBody_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarBody_0")) return false;
    boolean r;
    r = ArrayAccess(b, l + 1);
    if (!r) r = consumeToken(b, ID);
    return r;
  }

  // (EQ Expr)?
  private static boolean GvarBody_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarBody_1")) return false;
    GvarBody_1_0(b, l + 1);
    return true;
  }

  // EQ Expr
  private static boolean GvarBody_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarBody_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // CONSTANT? TypeName GvarBody (COMMA GvarBody)* SEMI?
  public static boolean GvarDecl(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDecl")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, GVAR_DECL, "<gvar decl>");
    r = GvarDecl_0(b, l + 1);
    r = r && TypeName(b, l + 1);
    p = r; // pin = 2
    r = r && report_error_(b, GvarBody(b, l + 1));
    r = p && report_error_(b, GvarDecl_3(b, l + 1)) && r;
    r = p && GvarDecl_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // CONSTANT?
  private static boolean GvarDecl_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDecl_0")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  // (COMMA GvarBody)*
  private static boolean GvarDecl_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDecl_3")) return false;
    while (true) {
      int c = current_position_(b);
      if (!GvarDecl_3_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "GvarDecl_3", c)) break;
    }
    return true;
  }

  // COMMA GvarBody
  private static boolean GvarDecl_3_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDecl_3_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && GvarBody(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // SEMI?
  private static boolean GvarDecl_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDecl_4")) return false;
    consumeToken(b, SEMI);
    return true;
  }

  /* ********************************************************** */
  // IF LPAREN Expr RPAREN (Stmt|BracedStmt) ElseStmt?
  public static boolean IfStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt")) return false;
    if (!nextTokenIs(b, IF)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, IF_STMT, null);
    r = consumeTokens(b, 1, IF, LPAREN);
    p = r; // pin = 1
    r = r && report_error_(b, Expr(b, l + 1, -1));
    r = p && report_error_(b, consumeToken(b, RPAREN)) && r;
    r = p && report_error_(b, IfStmt_4(b, l + 1)) && r;
    r = p && IfStmt_5(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Stmt|BracedStmt
  private static boolean IfStmt_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_4")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Stmt(b, l + 1);
    if (!r) r = BracedStmt(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // ElseStmt?
  private static boolean IfStmt_5(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_5")) return false;
    ElseStmt(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // LBRACE LibItem* RBRACE
  public static boolean LibBody(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibBody")) return false;
    if (!nextTokenIs(b, LBRACE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LIB_BODY, null);
    r = consumeToken(b, LBRACE);
    p = r; // pin = 1
    r = r && report_error_(b, LibBody_1(b, l + 1));
    r = p && consumeToken(b, RBRACE) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // LibItem*
  private static boolean LibBody_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibBody_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!LibItem(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "LibBody_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // LIBRARY ID LibReq? LibBody
  public static boolean LibDecl(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibDecl")) return false;
    if (!nextTokenIs(b, LIBRARY)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LIB_DECL, null);
    r = consumeTokens(b, 1, LIBRARY, ID);
    p = r; // pin = 1
    r = r && report_error_(b, LibDecl_2(b, l + 1));
    r = p && LibBody(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // LibReq?
  private static boolean LibDecl_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibDecl_2")) return false;
    LibReq(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // LibVisDecl|GvarDecl|FuncDecl|StructDecl
  public static boolean LibItem(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibItem")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, LIB_ITEM, "<lib item>");
    r = LibVisDecl(b, l + 1);
    if (!r) r = GvarDecl(b, l + 1);
    if (!r) r = FuncDecl(b, l + 1);
    if (!r) r = StructDecl(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // REQUIRES LibReqItem (COMMA LibReqItem)*
  public static boolean LibReq(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibReq")) return false;
    if (!nextTokenIs(b, REQUIRES)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LIB_REQ, null);
    r = consumeToken(b, REQUIRES);
    p = r; // pin = 1
    r = r && report_error_(b, LibReqItem(b, l + 1));
    r = p && LibReq_2(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // (COMMA LibReqItem)*
  private static boolean LibReq_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibReq_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!LibReq_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "LibReq_2", c)) break;
    }
    return true;
  }

  // COMMA LibReqItem
  private static boolean LibReq_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibReq_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && LibReqItem(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // OPTIONAL? ID
  public static boolean LibReqItem(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibReqItem")) return false;
    if (!nextTokenIs(b, "<lib req item>", ID, OPTIONAL)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, LIB_REQ_ITEM, "<lib req item>");
    r = LibReqItem_0(b, l + 1);
    r = r && consumeToken(b, ID);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // OPTIONAL?
  private static boolean LibReqItem_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibReqItem_0")) return false;
    consumeToken(b, OPTIONAL);
    return true;
  }

  /* ********************************************************** */
  // VisibilityDef (LibItem|LibBody)
  public static boolean LibVisDecl(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibVisDecl")) return false;
    if (!nextTokenIs(b, "<lib vis decl>", PRIVATE, PUBLIC)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, LIB_VIS_DECL, "<lib vis decl>");
    r = VisibilityDef(b, l + 1);
    r = r && LibVisDecl_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // LibItem|LibBody
  private static boolean LibVisDecl_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibVisDecl_1")) return false;
    boolean r;
    r = LibItem(b, l + 1);
    if (!r) r = LibBody(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // ID (EQ Expr)?
  public static boolean LvarBody(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LvarBody")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    r = r && LvarBody_1(b, l + 1);
    exit_section_(b, m, LVAR_BODY, r);
    return r;
  }

  // (EQ Expr)?
  private static boolean LvarBody_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LvarBody_1")) return false;
    LvarBody_1_0(b, l + 1);
    return true;
  }

  // EQ Expr
  private static boolean LvarBody_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LvarBody_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // TypeName LvarBody (COMMA LvarBody)* SEMI?
  public static boolean LvarStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LvarStmt")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LVAR_STMT, "<lvar stmt>");
    r = TypeName(b, l + 1);
    r = r && LvarBody(b, l + 1);
    p = r; // pin = 2
    r = r && report_error_(b, LvarStmt_2(b, l + 1));
    r = p && LvarStmt_3(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // (COMMA LvarBody)*
  private static boolean LvarStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LvarStmt_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!LvarStmt_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "LvarStmt_2", c)) break;
    }
    return true;
  }

  // COMMA LvarBody
  private static boolean LvarStmt_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LvarStmt_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && LvarBody(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // SEMI?
  private static boolean LvarStmt_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LvarStmt_3")) return false;
    consumeToken(b, SEMI);
    return true;
  }

  /* ********************************************************** */
  // LPAREN Expr RPAREN
  public static boolean ParenExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParenExpr")) return false;
    if (!nextTokenIs(b, LPAREN)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, LPAREN);
    r = r && Expr(b, l + 1, -1);
    r = r && consumeToken(b, RPAREN);
    exit_section_(b, m, PAREN_EXPR, r);
    return r;
  }

  /* ********************************************************** */
  // RETURN Expr? SEMI?
  public static boolean ReturnStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ReturnStmt")) return false;
    if (!nextTokenIs(b, RETURN)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, RETURN_STMT, null);
    r = consumeToken(b, RETURN);
    p = r; // pin = 1
    r = r && report_error_(b, ReturnStmt_1(b, l + 1));
    r = p && ReturnStmt_2(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Expr?
  private static boolean ReturnStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ReturnStmt_1")) return false;
    Expr(b, l + 1, -1);
    return true;
  }

  // SEMI?
  private static boolean ReturnStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ReturnStmt_2")) return false;
    consumeToken(b, SEMI);
    return true;
  }

  /* ********************************************************** */
  // (LibDecl)*
  static boolean Root(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root")) return false;
    Marker m = enter_section_(b, l, _NONE_);
    while (true) {
      int c = current_position_(b);
      if (!Root_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Root", c)) break;
    }
    exit_section_(b, l, m, true, false, ZincParser::RootRecover);
    return true;
  }

  // (LibDecl)
  private static boolean Root_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = LibDecl(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // !(LIBRARY)
  static boolean RootRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "RootRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !consumeToken(b, LIBRARY);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // EQ|PLUS_EQ|MINUS_EQ|MUL_EQ|DIV_EQ
  public static boolean SetOp(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SetOp")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, SET_OP, "<set op>");
    r = consumeToken(b, EQ);
    if (!r) r = consumeToken(b, PLUS_EQ);
    if (!r) r = consumeToken(b, MINUS_EQ);
    if (!r) r = consumeToken(b, MUL_EQ);
    if (!r) r = consumeToken(b, DIV_EQ);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // (ArrayAccess|ID) StructAccess* SetOp Expr SEMI?
  public static boolean SetStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SetStmt")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, SET_STMT, null);
    r = SetStmt_0(b, l + 1);
    r = r && SetStmt_1(b, l + 1);
    r = r && SetOp(b, l + 1);
    p = r; // pin = 3
    r = r && report_error_(b, Expr(b, l + 1, -1));
    r = p && SetStmt_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // ArrayAccess|ID
  private static boolean SetStmt_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SetStmt_0")) return false;
    boolean r;
    r = ArrayAccess(b, l + 1);
    if (!r) r = consumeToken(b, ID);
    return r;
  }

  // StructAccess*
  private static boolean SetStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SetStmt_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!StructAccess(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "SetStmt_1", c)) break;
    }
    return true;
  }

  // SEMI?
  private static boolean SetStmt_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SetStmt_4")) return false;
    consumeToken(b, SEMI);
    return true;
  }

  /* ********************************************************** */
  // ForStmt
  //     | CallStmt
  //     | IfStmt
  //     | ReturnStmt
  //     | LvarStmt
  //     | SetStmt
  //     | DoStmt
  //     | WhileStmt
  //     | BreakStmt
  //     | StructStmt
  public static boolean Stmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Stmt")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, STMT, "<stmt>");
    r = ForStmt(b, l + 1);
    if (!r) r = CallStmt(b, l + 1);
    if (!r) r = IfStmt(b, l + 1);
    if (!r) r = ReturnStmt(b, l + 1);
    if (!r) r = LvarStmt(b, l + 1);
    if (!r) r = SetStmt(b, l + 1);
    if (!r) r = DoStmt(b, l + 1);
    if (!r) r = WhileStmt(b, l + 1);
    if (!r) r = BreakStmt(b, l + 1);
    if (!r) r = StructStmt(b, l + 1);
    exit_section_(b, l, m, r, false, ZincParser::StmtRecover);
    return r;
  }

  /* ********************************************************** */
  // !(LBRACE|RBRACE|FOR|IF|ELSE|DO|WHILE|RETURN|DEBUG|TypeName ID|ID LPAREN|ID LBRACK|ID SetOp|ID DOT)
  static boolean StmtRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StmtRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !StmtRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // LBRACE|RBRACE|FOR|IF|ELSE|DO|WHILE|RETURN|DEBUG|TypeName ID|ID LPAREN|ID LBRACK|ID SetOp|ID DOT
  private static boolean StmtRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StmtRecover_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, LBRACE);
    if (!r) r = consumeToken(b, RBRACE);
    if (!r) r = consumeToken(b, FOR);
    if (!r) r = consumeToken(b, IF);
    if (!r) r = consumeToken(b, ELSE);
    if (!r) r = consumeToken(b, DO);
    if (!r) r = consumeToken(b, WHILE);
    if (!r) r = consumeToken(b, RETURN);
    if (!r) r = consumeToken(b, DEBUG);
    if (!r) r = StmtRecover_0_9(b, l + 1);
    if (!r) r = parseTokens(b, 0, ID, LPAREN);
    if (!r) r = parseTokens(b, 0, ID, LBRACK);
    if (!r) r = StmtRecover_0_12(b, l + 1);
    if (!r) r = parseTokens(b, 0, ID, DOT);
    exit_section_(b, m, null, r);
    return r;
  }

  // TypeName ID
  private static boolean StmtRecover_0_9(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StmtRecover_0_9")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = TypeName(b, l + 1);
    r = r && consumeToken(b, ID);
    exit_section_(b, m, null, r);
    return r;
  }

  // ID SetOp
  private static boolean StmtRecover_0_12(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StmtRecover_0_12")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    r = r && SetOp(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // DOT (FuncCall|ArrayAccess|ID)
  public static boolean StructAccess(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructAccess")) return false;
    if (!nextTokenIs(b, DOT)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, STRUCT_ACCESS, null);
    r = consumeToken(b, DOT);
    p = r; // pin = 1
    r = r && StructAccess_1(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // FuncCall|ArrayAccess|ID
  private static boolean StructAccess_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructAccess_1")) return false;
    boolean r;
    r = FuncCall(b, l + 1);
    if (!r) r = ArrayAccess(b, l + 1);
    if (!r) r = consumeToken(b, ID);
    return r;
  }

  /* ********************************************************** */
  // LBRACE StructItem* RBRACE
  public static boolean StructBody(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructBody")) return false;
    if (!nextTokenIs(b, LBRACE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, STRUCT_BODY, null);
    r = consumeToken(b, LBRACE);
    p = r; // pin = 1
    r = r && report_error_(b, StructBody_1(b, l + 1));
    r = p && consumeToken(b, RBRACE) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // StructItem*
  private static boolean StructBody_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructBody_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!StructItem(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "StructBody_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // STRUCT ID StructBody
  public static boolean StructDecl(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructDecl")) return false;
    if (!nextTokenIs(b, STRUCT)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, STRUCT_DECL, null);
    r = consumeTokens(b, 1, STRUCT, ID);
    p = r; // pin = 1
    r = r && StructBody(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // StructVisDecl|GvarDecl|StructMethod
  public static boolean StructItem(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructItem")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, STRUCT_ITEM, "<struct item>");
    r = StructVisDecl(b, l + 1);
    if (!r) r = GvarDecl(b, l + 1);
    if (!r) r = StructMethod(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // STATIC? METHOD ID LPAREN TypedVarList? RPAREN FuncReturns? FuncBody
  public static boolean StructMethod(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructMethod")) return false;
    if (!nextTokenIs(b, "<struct method>", METHOD, STATIC)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, STRUCT_METHOD, "<struct method>");
    r = StructMethod_0(b, l + 1);
    r = r && consumeTokens(b, 0, METHOD, ID, LPAREN);
    r = r && StructMethod_4(b, l + 1);
    r = r && consumeToken(b, RPAREN);
    r = r && StructMethod_6(b, l + 1);
    r = r && FuncBody(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // STATIC?
  private static boolean StructMethod_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructMethod_0")) return false;
    consumeToken(b, STATIC);
    return true;
  }

  // TypedVarList?
  private static boolean StructMethod_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructMethod_4")) return false;
    TypedVarList(b, l + 1);
    return true;
  }

  // FuncReturns?
  private static boolean StructMethod_6(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructMethod_6")) return false;
    FuncReturns(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // ID StructAccess  SEMI?
  public static boolean StructStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructStmt")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    r = r && StructAccess(b, l + 1);
    r = r && StructStmt_2(b, l + 1);
    exit_section_(b, m, STRUCT_STMT, r);
    return r;
  }

  // SEMI?
  private static boolean StructStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructStmt_2")) return false;
    consumeToken(b, SEMI);
    return true;
  }

  /* ********************************************************** */
  // VisibilityDef (StructItem|StructBody)
  public static boolean StructVisDecl(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructVisDecl")) return false;
    if (!nextTokenIs(b, "<struct vis decl>", PRIVATE, PUBLIC)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, STRUCT_VIS_DECL, "<struct vis decl>");
    r = VisibilityDef(b, l + 1);
    r = r && StructVisDecl_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // StructItem|StructBody
  private static boolean StructVisDecl_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructVisDecl_1")) return false;
    boolean r;
    r = StructItem(b, l + 1);
    if (!r) r = StructBody(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // ID|HANDLE|INTEGER|REAL|BOOLEAN|STRING|CODE|KEY
  public static boolean TypeName(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypeName")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, TYPE_NAME, "<type name>");
    r = consumeToken(b, ID);
    if (!r) r = consumeToken(b, HANDLE);
    if (!r) r = consumeToken(b, INTEGER);
    if (!r) r = consumeToken(b, REAL);
    if (!r) r = consumeToken(b, BOOLEAN);
    if (!r) r = consumeToken(b, STRING);
    if (!r) r = consumeToken(b, CODE);
    if (!r) r = consumeToken(b, KEY);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // TypeName ID
  public static boolean TypedVar(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypedVar")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, TYPED_VAR, "<typed var>");
    r = TypeName(b, l + 1);
    r = r && consumeToken(b, ID);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // TypedVar (COMMA TypedVar)*
  public static boolean TypedVarList(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypedVarList")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, TYPED_VAR_LIST, "<typed var list>");
    r = TypedVar(b, l + 1);
    p = r; // pin = 1
    r = r && TypedVarList_1(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // (COMMA TypedVar)*
  private static boolean TypedVarList_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypedVarList_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!TypedVarList_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "TypedVarList_1", c)) break;
    }
    return true;
  }

  // COMMA TypedVar
  private static boolean TypedVarList_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypedVarList_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && TypedVar(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // PUBLIC|PRIVATE
  public static boolean VisibilityDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VisibilityDef")) return false;
    if (!nextTokenIs(b, "<visibility def>", PRIVATE, PUBLIC)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, VISIBILITY_DEF, "<visibility def>");
    r = consumeToken(b, PUBLIC);
    if (!r) r = consumeToken(b, PRIVATE);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // WHILE LPAREN Expr RPAREN (Stmt|BracedStmt)
  public static boolean WhileStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "WhileStmt")) return false;
    if (!nextTokenIs(b, WHILE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, WHILE_STMT, null);
    r = consumeTokens(b, 1, WHILE, LPAREN);
    p = r; // pin = 1
    r = r && report_error_(b, Expr(b, l + 1, -1));
    r = p && report_error_(b, consumeToken(b, RPAREN)) && r;
    r = p && WhileStmt_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Stmt|BracedStmt
  private static boolean WhileStmt_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "WhileStmt_4")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Stmt(b, l + 1);
    if (!r) r = BracedStmt(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // Expression root: Expr
  // Operator priority table:
  // 0: BINARY(PlusExpr) BINARY(MinusExpr)
  // 1: BINARY(MulExpr) BINARY(DivExpr)
  // 2: PREFIX(MulUnaryExpr) PREFIX(DivUnaryExpr) PREFIX(PlusUnaryExpr) PREFIX(MinusUnaryExpr)
  //    PREFIX(NotExpr)
  // 3: BINARY(EqExpr) BINARY(NEqExpr) BINARY(LTExpr) BINARY(LTEqExpr)
  //    BINARY(GTExpr) BINARY(GTEqExpr)
  // 4: BINARY(OrExpr)
  // 5: BINARY(AndExpr)
  // 6: ATOM(PrimaryExpr)
  // 7: BINARY(DotExpr)
  public static boolean Expr(PsiBuilder b, int l, int g) {
    if (!recursion_guard_(b, l, "Expr")) return false;
    addVariant(b, "<expr>");
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, "<expr>");
    r = PlusUnaryExpr(b, l + 1);
    if (!r) r = MinusUnaryExpr(b, l + 1);
    if (!r) r = MulUnaryExpr(b, l + 1);
    if (!r) r = DivUnaryExpr(b, l + 1);
    if (!r) r = NotExpr(b, l + 1);
    if (!r) r = PrimaryExpr(b, l + 1);
    p = r;
    r = r && Expr_0(b, l + 1, g);
    exit_section_(b, l, m, null, r, p, null);
    return r || p;
  }

  public static boolean Expr_0(PsiBuilder b, int l, int g) {
    if (!recursion_guard_(b, l, "Expr_0")) return false;
    boolean r = true;
    while (true) {
      Marker m = enter_section_(b, l, _LEFT_, null);
      if (g < 0 && consumeTokenSmart(b, PLUS)) {
        r = Expr(b, l, 0);
        exit_section_(b, l, m, PLUS_EXPR, r, true, null);
      }
      else if (g < 0 && consumeTokenSmart(b, MINUS)) {
        r = Expr(b, l, 0);
        exit_section_(b, l, m, MINUS_EXPR, r, true, null);
      }
      else if (g < 1 && consumeTokenSmart(b, MUL)) {
        r = Expr(b, l, 1);
        exit_section_(b, l, m, MUL_EXPR, r, true, null);
      }
      else if (g < 1 && consumeTokenSmart(b, DIV)) {
        r = Expr(b, l, 1);
        exit_section_(b, l, m, DIV_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, EQ_EQ)) {
        r = Expr(b, l, 3);
        exit_section_(b, l, m, EQ_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, NEQ)) {
        r = Expr(b, l, 3);
        exit_section_(b, l, m, N_EQ_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, LT)) {
        r = Expr(b, l, 3);
        exit_section_(b, l, m, LT_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, LT_EQ)) {
        r = Expr(b, l, 3);
        exit_section_(b, l, m, LT_EQ_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, GT)) {
        r = Expr(b, l, 3);
        exit_section_(b, l, m, GT_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, GT_EQ)) {
        r = Expr(b, l, 3);
        exit_section_(b, l, m, GT_EQ_EXPR, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, OR_OR)) {
        r = Expr(b, l, 4);
        exit_section_(b, l, m, OR_EXPR, r, true, null);
      }
      else if (g < 5 && consumeTokenSmart(b, AND_AND)) {
        r = Expr(b, l, 5);
        exit_section_(b, l, m, AND_EXPR, r, true, null);
      }
      else if (g < 7 && consumeTokenSmart(b, DOT)) {
        r = Expr(b, l, 7);
        exit_section_(b, l, m, DOT_EXPR, r, true, null);
      }
      else {
        exit_section_(b, l, m, null, false, false, null);
        break;
      }
    }
    return r;
  }

  public static boolean PlusUnaryExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "PlusUnaryExpr")) return false;
    if (!nextTokenIsSmart(b, PLUS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, PLUS);
    p = r;
    r = p && Expr(b, l, 2);
    exit_section_(b, l, m, PLUS_UNARY_EXPR, r, p, null);
    return r || p;
  }

  public static boolean MinusUnaryExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MinusUnaryExpr")) return false;
    if (!nextTokenIsSmart(b, MINUS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, MINUS);
    p = r;
    r = p && Expr(b, l, 2);
    exit_section_(b, l, m, MINUS_UNARY_EXPR, r, p, null);
    return r || p;
  }

  public static boolean MulUnaryExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MulUnaryExpr")) return false;
    if (!nextTokenIsSmart(b, MUL)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, MUL);
    p = r;
    r = p && Expr(b, l, 2);
    exit_section_(b, l, m, MUL_UNARY_EXPR, r, p, null);
    return r || p;
  }

  public static boolean DivUnaryExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "DivUnaryExpr")) return false;
    if (!nextTokenIsSmart(b, DIV)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, DIV);
    p = r;
    r = p && Expr(b, l, 2);
    exit_section_(b, l, m, DIV_UNARY_EXPR, r, p, null);
    return r || p;
  }

  public static boolean NotExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "NotExpr")) return false;
    if (!nextTokenIsSmart(b, NOT)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, NOT);
    p = r;
    r = p && Expr(b, l, 2);
    exit_section_(b, l, m, NOT_EXPR, r, p, null);
    return r || p;
  }

  // FALSE |
  //     NULL |
  //     TRUE |
  //     ParenExpr |
  //     ArrayAccess |
  //     FuncCall |
  //     FuncAsCode |
  //     REALVAL |
  //     HEXVAL |
  //     INTVAL |
  //     RAWVAL |
  //     STRVAL |
  //     ID
  public static boolean PrimaryExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "PrimaryExpr")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _COLLAPSE_, PRIMARY_EXPR, "<primary expr>");
    r = consumeTokenSmart(b, FALSE);
    if (!r) r = consumeTokenSmart(b, NULL);
    if (!r) r = consumeTokenSmart(b, TRUE);
    if (!r) r = ParenExpr(b, l + 1);
    if (!r) r = ArrayAccess(b, l + 1);
    if (!r) r = FuncCall(b, l + 1);
    if (!r) r = FuncAsCode(b, l + 1);
    if (!r) r = consumeTokenSmart(b, REALVAL);
    if (!r) r = consumeTokenSmart(b, HEXVAL);
    if (!r) r = consumeTokenSmart(b, INTVAL);
    if (!r) r = consumeTokenSmart(b, RAWVAL);
    if (!r) r = consumeTokenSmart(b, STRVAL);
    if (!r) r = consumeTokenSmart(b, ID);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

}
