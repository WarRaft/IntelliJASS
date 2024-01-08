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
    create_token_set_(AND_EXPR, ASSIGN_EXPR, CALL_EXPR, DIV_EXPR,
      DIV_UNARY_EXPR, EQ_EXPR, EXPR, FOR_EXPR,
      GT_EQ_EXPR, GT_EXPR, LT_EQ_EXPR, LT_EXPR,
      MINUS_EXPR, MINUS_UNARY_EXPR, MUL_EXPR, MUL_UNARY_EXPR,
      NOT_EXPR, N_EQ_EXPR, OR_EXPR, PAREN_EXPR,
      PLUS_EXPR, PLUS_UNARY_EXPR, PRIMARY_EXPR, REF_EXPR),
  };

  /* ********************************************************** */
  // Expr|FuncAsCode|Lambda
  public static boolean Arg(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Arg")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, ARG, "<arg>");
    r = Expr(b, l + 1, -1);
    if (!r) r = FuncAsCode(b, l + 1);
    if (!r) r = Lambda(b, l + 1);
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
  // LPAREN ArgList? RPAREN
  public static boolean Args(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Args")) return false;
    if (!nextTokenIs(b, LPAREN)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, ARGS, null);
    r = consumeToken(b, LPAREN);
    p = r; // pin = 1
    r = r && report_error_(b, Args_1(b, l + 1));
    r = p && consumeToken(b, RPAREN) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // ArgList?
  private static boolean Args_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Args_1")) return false;
    ArgList(b, l + 1);
    return true;
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
  // ID Args
  public static boolean CallExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallExpr")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    r = r && Args(b, l + 1);
    exit_section_(b, m, CALL_EXPR, r);
    return r;
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
    r = Stmt(b, l + 1);
    if (!r) r = BracedStmt(b, l + 1);
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
    r = Stmt(b, l + 1);
    if (!r) r = BracedStmt(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // AssignExpr SEMI?
  public static boolean ExprStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ExprStmt")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, EXPR_STMT, "<expr stmt>");
    r = Expr(b, l + 1, -1);
    r = r && ExprStmt_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // SEMI?
  private static boolean ExprStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ExprStmt_1")) return false;
    consumeToken(b, SEMI);
    return true;
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
    r = Stmt(b, l + 1);
    if (!r) r = BracedStmt(b, l + 1);
    return r;
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
  // ID
  public static boolean FuncCallName(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncCallName")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    exit_section_(b, m, FUNC_CALL_NAME, r);
    return r;
  }

  /* ********************************************************** */
  // CONSTANT? FUNCTION FuncDefName LPAREN TypedVarList? RPAREN FuncReturns? FuncBody
  public static boolean FuncDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef")) return false;
    if (!nextTokenIs(b, "<func def>", CONSTANT, FUNCTION)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNC_DEF, "<func def>");
    r = FuncDef_0(b, l + 1);
    r = r && consumeToken(b, FUNCTION);
    r = r && FuncDefName(b, l + 1);
    p = r; // pin = 3
    r = r && report_error_(b, consumeToken(b, LPAREN));
    r = p && report_error_(b, FuncDef_4(b, l + 1)) && r;
    r = p && report_error_(b, consumeToken(b, RPAREN)) && r;
    r = p && report_error_(b, FuncDef_6(b, l + 1)) && r;
    r = p && FuncBody(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // CONSTANT?
  private static boolean FuncDef_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef_0")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  // TypedVarList?
  private static boolean FuncDef_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef_4")) return false;
    TypedVarList(b, l + 1);
    return true;
  }

  // FuncReturns?
  private static boolean FuncDef_6(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef_6")) return false;
    FuncReturns(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // ID
  public static boolean FuncDefName(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDefName")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    exit_section_(b, m, FUNC_DEF_NAME, r);
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
    r = Stmt(b, l + 1);
    if (!r) r = BracedStmt(b, l + 1);
    return r;
  }

  // ElseStmt?
  private static boolean IfStmt_5(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_5")) return false;
    ElseStmt(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // FUNCTION LPAREN TypedVarList? RPAREN FuncReturns? FuncBody
  public static boolean Lambda(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda")) return false;
    if (!nextTokenIs(b, FUNCTION)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LAMBDA, null);
    r = consumeTokens(b, 2, FUNCTION, LPAREN);
    p = r; // pin = 2
    r = r && report_error_(b, Lambda_2(b, l + 1));
    r = p && report_error_(b, consumeToken(b, RPAREN)) && r;
    r = p && report_error_(b, Lambda_4(b, l + 1)) && r;
    r = p && FuncBody(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // TypedVarList?
  private static boolean Lambda_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda_2")) return false;
    TypedVarList(b, l + 1);
    return true;
  }

  // FuncReturns?
  private static boolean Lambda_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda_4")) return false;
    FuncReturns(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // LBRACE LibItem* RBRACE
  static boolean LibBody(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibBody")) return false;
    if (!nextTokenIs(b, LBRACE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_);
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
  public static boolean LibDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibDef")) return false;
    if (!nextTokenIs(b, LIBRARY)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LIB_DEF, null);
    r = consumeTokens(b, 1, LIBRARY, ID);
    p = r; // pin = 1
    r = r && report_error_(b, LibDef_2(b, l + 1));
    r = p && LibBody(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // LibReq?
  private static boolean LibDef_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibDef_2")) return false;
    LibReq(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // LibVisDef|VarDef|FuncDef|StructDef
  static boolean LibItem(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibItem")) return false;
    boolean r;
    r = LibVisDef(b, l + 1);
    if (!r) r = VarDef(b, l + 1);
    if (!r) r = FuncDef(b, l + 1);
    if (!r) r = StructDef(b, l + 1);
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
  // Vis (LibItem|LibBody)
  public static boolean LibVisDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibVisDef")) return false;
    if (!nextTokenIs(b, "<lib vis def>", PRIVATE, PUBLIC)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, LIB_VIS_DEF, "<lib vis def>");
    r = Vis(b, l + 1);
    r = r && LibVisDef_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // LibItem|LibBody
  private static boolean LibVisDef_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibVisDef_1")) return false;
    boolean r;
    r = LibItem(b, l + 1);
    if (!r) r = LibBody(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // Vis? STATIC? METHOD ID LPAREN TypedVarList? RPAREN FuncReturns? FuncBody
  public static boolean MethodDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MethodDef")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, METHOD_DEF, "<method def>");
    r = MethodDef_0(b, l + 1);
    r = r && MethodDef_1(b, l + 1);
    r = r && consumeTokens(b, 1, METHOD, ID, LPAREN);
    p = r; // pin = 3
    r = r && report_error_(b, MethodDef_5(b, l + 1));
    r = p && report_error_(b, consumeToken(b, RPAREN)) && r;
    r = p && report_error_(b, MethodDef_7(b, l + 1)) && r;
    r = p && FuncBody(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Vis?
  private static boolean MethodDef_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MethodDef_0")) return false;
    Vis(b, l + 1);
    return true;
  }

  // STATIC?
  private static boolean MethodDef_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MethodDef_1")) return false;
    consumeToken(b, STATIC);
    return true;
  }

  // TypedVarList?
  private static boolean MethodDef_5(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MethodDef_5")) return false;
    TypedVarList(b, l + 1);
    return true;
  }

  // FuncReturns?
  private static boolean MethodDef_7(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MethodDef_7")) return false;
    FuncReturns(b, l + 1);
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
  // (LibDef)*
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

  // (LibDef)
  private static boolean Root_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = LibDef(b, l + 1);
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
  // ForStmt |
  //         IfStmt |
  //         ReturnStmt |
  //         DoStmt |
  //         WhileStmt |
  //         BreakStmt |
  //         VarDef |
  //         ExprStmt
  static boolean Stmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Stmt")) return false;
    boolean r;
    r = ForStmt(b, l + 1);
    if (!r) r = IfStmt(b, l + 1);
    if (!r) r = ReturnStmt(b, l + 1);
    if (!r) r = DoStmt(b, l + 1);
    if (!r) r = WhileStmt(b, l + 1);
    if (!r) r = BreakStmt(b, l + 1);
    if (!r) r = VarDef(b, l + 1);
    if (!r) r = ExprStmt(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // LBRACE StructItem* RBRACE
  static boolean StructBody(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructBody")) return false;
    if (!nextTokenIs(b, LBRACE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_);
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
  public static boolean StructDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructDef")) return false;
    if (!nextTokenIs(b, STRUCT)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, STRUCT_DEF, null);
    r = consumeTokens(b, 1, STRUCT, ID);
    p = r; // pin = 1
    r = r && StructBody(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // VarDef|MethodDef|StructVis|StructStat
  static boolean StructItem(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructItem")) return false;
    boolean r;
    r = VarDef(b, l + 1);
    if (!r) r = MethodDef(b, l + 1);
    if (!r) r = StructVis(b, l + 1);
    if (!r) r = StructStat(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // STATIC StructBody
  public static boolean StructStat(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructStat")) return false;
    if (!nextTokenIs(b, STATIC)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, STATIC);
    r = r && StructBody(b, l + 1);
    exit_section_(b, m, STRUCT_STAT, r);
    return r;
  }

  /* ********************************************************** */
  // Vis StructBody
  public static boolean StructVis(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructVis")) return false;
    if (!nextTokenIs(b, "<struct vis>", PRIVATE, PUBLIC)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, STRUCT_VIS, "<struct vis>");
    r = Vis(b, l + 1);
    r = r && StructBody(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // HANDLE|INTEGER|REAL|BOOLEAN|STRING|CODE|KEY|THISTYPE|ID
  public static boolean TypeName(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypeName")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, TYPE_NAME, "<type name>");
    r = consumeToken(b, HANDLE);
    if (!r) r = consumeToken(b, INTEGER);
    if (!r) r = consumeToken(b, REAL);
    if (!r) r = consumeToken(b, BOOLEAN);
    if (!r) r = consumeToken(b, STRING);
    if (!r) r = consumeToken(b, CODE);
    if (!r) r = consumeToken(b, KEY);
    if (!r) r = consumeToken(b, THISTYPE);
    if (!r) r = consumeToken(b, ID);
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
  // (ArrayAccess|ID) (EQ Expr)?
  public static boolean VarBody(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarBody")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = VarBody_0(b, l + 1);
    r = r && VarBody_1(b, l + 1);
    exit_section_(b, m, VAR_BODY, r);
    return r;
  }

  // ArrayAccess|ID
  private static boolean VarBody_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarBody_0")) return false;
    boolean r;
    r = ArrayAccess(b, l + 1);
    if (!r) r = consumeToken(b, ID);
    return r;
  }

  // (EQ Expr)?
  private static boolean VarBody_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarBody_1")) return false;
    VarBody_1_0(b, l + 1);
    return true;
  }

  // EQ Expr
  private static boolean VarBody_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarBody_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // Vis? CONSTANT? TypeName VarBody (COMMA VarBody)* SEMI?
  public static boolean VarDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarDef")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, VAR_DEF, "<var def>");
    r = VarDef_0(b, l + 1);
    r = r && VarDef_1(b, l + 1);
    r = r && TypeName(b, l + 1);
    r = r && VarBody(b, l + 1);
    r = r && VarDef_4(b, l + 1);
    r = r && VarDef_5(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // Vis?
  private static boolean VarDef_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarDef_0")) return false;
    Vis(b, l + 1);
    return true;
  }

  // CONSTANT?
  private static boolean VarDef_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarDef_1")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  // (COMMA VarBody)*
  private static boolean VarDef_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarDef_4")) return false;
    while (true) {
      int c = current_position_(b);
      if (!VarDef_4_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "VarDef_4", c)) break;
    }
    return true;
  }

  // COMMA VarBody
  private static boolean VarDef_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarDef_4_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && VarBody(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // SEMI?
  private static boolean VarDef_5(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarDef_5")) return false;
    consumeToken(b, SEMI);
    return true;
  }

  /* ********************************************************** */
  // PUBLIC|PRIVATE
  public static boolean Vis(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Vis")) return false;
    if (!nextTokenIs(b, "<vis>", PRIVATE, PUBLIC)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, VIS, "<vis>");
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
    r = Stmt(b, l + 1);
    if (!r) r = BracedStmt(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // Expression root: Expr
  // Operator priority table:
  // 0: BINARY(AssignExpr)
  // 1: BINARY(RefExpr)
  // 2: BINARY(PlusExpr) BINARY(MinusExpr)
  // 3: BINARY(MulExpr) BINARY(DivExpr)
  // 4: PREFIX(MulUnaryExpr) PREFIX(DivUnaryExpr) PREFIX(PlusUnaryExpr) PREFIX(MinusUnaryExpr)
  //    PREFIX(NotExpr)
  // 5: BINARY(EqExpr) BINARY(NEqExpr) BINARY(LTExpr) BINARY(LTEqExpr)
  //    BINARY(GTExpr) BINARY(GTEqExpr)
  // 6: BINARY(OrExpr)
  // 7: BINARY(AndExpr)
  // 8: ATOM(PrimaryExpr)
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
      if (g < 0 && AssignExpr_0(b, l + 1)) {
        r = Expr(b, l, 0);
        exit_section_(b, l, m, ASSIGN_EXPR, r, true, null);
      }
      else if (g < 1 && consumeTokenSmart(b, DOT)) {
        r = Expr(b, l, 1);
        exit_section_(b, l, m, REF_EXPR, r, true, null);
      }
      else if (g < 2 && consumeTokenSmart(b, PLUS)) {
        r = Expr(b, l, 2);
        exit_section_(b, l, m, PLUS_EXPR, r, true, null);
      }
      else if (g < 2 && consumeTokenSmart(b, MINUS)) {
        r = Expr(b, l, 2);
        exit_section_(b, l, m, MINUS_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, MUL)) {
        r = Expr(b, l, 3);
        exit_section_(b, l, m, MUL_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, DIV)) {
        r = Expr(b, l, 3);
        exit_section_(b, l, m, DIV_EXPR, r, true, null);
      }
      else if (g < 5 && consumeTokenSmart(b, EQ_EQ)) {
        r = Expr(b, l, 5);
        exit_section_(b, l, m, EQ_EXPR, r, true, null);
      }
      else if (g < 5 && consumeTokenSmart(b, NEQ)) {
        r = Expr(b, l, 5);
        exit_section_(b, l, m, N_EQ_EXPR, r, true, null);
      }
      else if (g < 5 && consumeTokenSmart(b, LT)) {
        r = Expr(b, l, 5);
        exit_section_(b, l, m, LT_EXPR, r, true, null);
      }
      else if (g < 5 && consumeTokenSmart(b, LT_EQ)) {
        r = Expr(b, l, 5);
        exit_section_(b, l, m, LT_EQ_EXPR, r, true, null);
      }
      else if (g < 5 && consumeTokenSmart(b, GT)) {
        r = Expr(b, l, 5);
        exit_section_(b, l, m, GT_EXPR, r, true, null);
      }
      else if (g < 5 && consumeTokenSmart(b, GT_EQ)) {
        r = Expr(b, l, 5);
        exit_section_(b, l, m, GT_EQ_EXPR, r, true, null);
      }
      else if (g < 6 && consumeTokenSmart(b, OR_OR)) {
        r = Expr(b, l, 6);
        exit_section_(b, l, m, OR_EXPR, r, true, null);
      }
      else if (g < 7 && consumeTokenSmart(b, AND_AND)) {
        r = Expr(b, l, 7);
        exit_section_(b, l, m, AND_EXPR, r, true, null);
      }
      else {
        exit_section_(b, l, m, null, false, false, null);
        break;
      }
    }
    return r;
  }

  // EQ|PLUS_EQ|MINUS_EQ|MUL_EQ|DIV_EQ
  private static boolean AssignExpr_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "AssignExpr_0")) return false;
    boolean r;
    r = consumeTokenSmart(b, EQ);
    if (!r) r = consumeTokenSmart(b, PLUS_EQ);
    if (!r) r = consumeTokenSmart(b, MINUS_EQ);
    if (!r) r = consumeTokenSmart(b, MUL_EQ);
    if (!r) r = consumeTokenSmart(b, DIV_EQ);
    return r;
  }

  public static boolean PlusUnaryExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "PlusUnaryExpr")) return false;
    if (!nextTokenIsSmart(b, PLUS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, PLUS);
    p = r;
    r = p && Expr(b, l, 4);
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
    r = p && Expr(b, l, 4);
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
    r = p && Expr(b, l, 4);
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
    r = p && Expr(b, l, 4);
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
    r = p && Expr(b, l, 4);
    exit_section_(b, l, m, NOT_EXPR, r, p, null);
    return r || p;
  }

  // FALSE |
  //     NULL |
  //     TRUE |
  //     ParenExpr |
  //     ArrayAccess |
  //     CallExpr |
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
    if (!r) r = CallExpr(b, l + 1);
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
