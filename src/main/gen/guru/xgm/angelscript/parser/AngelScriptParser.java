// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.parser;

import com.intellij.lang.PsiBuilder;
import com.intellij.lang.PsiBuilder.Marker;
import static guru.xgm.angelscript.psi.AngelScriptTypes.*;
import static com.intellij.lang.parser.GeneratedParserUtilBase.*;
import com.intellij.psi.tree.IElementType;
import com.intellij.lang.ASTNode;
import com.intellij.psi.tree.TokenSet;
import com.intellij.lang.PsiParser;
import com.intellij.lang.LightPsiParser;

@SuppressWarnings({"SimplifiableIfStatement", "UnusedAssignment"})
public class AngelScriptParser implements PsiParser, LightPsiParser {

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
    create_token_set_(AND_EXPR, ASSIGN_EXPR, DIV_EXPR, DIV_UNARY_EXPR,
      EQ_EXPR, EXPR, GT_EQ_EXPR, GT_EXPR,
      LT_EQ_EXPR, LT_EXPR, MINUS_EXPR, MINUS_UNARY_EXPR,
      MUL_EXPR, MUL_UNARY_EXPR, NOT_EXPR, N_EQ_EXPR,
      OR_EXPR, PAREN_EXPR, PLUS_EXPR, PLUS_UNARY_EXPR,
      POST_DEC_EXPR, POST_INC_EXPR, PRE_DEC_EXPR, PRE_INC_EXPR,
      PRIMARY_EXPR, REF_EXPR),
  };

  /* ********************************************************** */
  // LPAREN (ID COLON)? Assign (COMMA (ID COLON)? Assign)* RPAREN
  public static boolean ArgList(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList")) return false;
    if (!nextTokenIs(b, LPAREN)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, LPAREN);
    r = r && ArgList_1(b, l + 1);
    r = r && Assign(b, l + 1);
    r = r && ArgList_3(b, l + 1);
    r = r && consumeToken(b, RPAREN);
    exit_section_(b, m, ARG_LIST, r);
    return r;
  }

  // (ID COLON)?
  private static boolean ArgList_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList_1")) return false;
    ArgList_1_0(b, l + 1);
    return true;
  }

  // ID COLON
  private static boolean ArgList_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, ID, COLON);
    exit_section_(b, m, null, r);
    return r;
  }

  // (COMMA (ID COLON)? Assign)*
  private static boolean ArgList_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList_3")) return false;
    while (true) {
      int c = current_position_(b);
      if (!ArgList_3_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ArgList_3", c)) break;
    }
    return true;
  }

  // COMMA (ID COLON)? Assign
  private static boolean ArgList_3_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList_3_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && ArgList_3_0_1(b, l + 1);
    r = r && Assign(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (ID COLON)?
  private static boolean ArgList_3_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList_3_0_1")) return false;
    ArgList_3_0_1_0(b, l + 1);
    return true;
  }

  // ID COLON
  private static boolean ArgList_3_0_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList_3_0_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, ID, COLON);
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
  // Condition (AssignOp Assign)?
  public static boolean Assign(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Assign")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, ASSIGN, "<assign>");
    r = Condition(b, l + 1);
    r = r && Assign_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (AssignOp Assign)?
  private static boolean Assign_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Assign_1")) return false;
    Assign_1_0(b, l + 1);
    return true;
  }

  // AssignOp Assign
  private static boolean Assign_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Assign_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = AssignOp(b, l + 1);
    r = r && Assign(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // EQ|PLUS_EQ|MINUS_EQ|MUL_EQ|DIV_EQ
  public static boolean AssignOp(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "AssignOp")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, ASSIGN_OP, "<assign op>");
    r = consumeToken(b, EQ);
    if (!r) r = consumeToken(b, PLUS_EQ);
    if (!r) r = consumeToken(b, MINUS_EQ);
    if (!r) r = consumeToken(b, MUL_EQ);
    if (!r) r = consumeToken(b, DIV_EQ);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // BREAK SEMI
  public static boolean BreakStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "BreakStmt")) return false;
    if (!nextTokenIs(b, BREAK)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, BREAK, SEMI);
    exit_section_(b, m, BREAK_STMT, r);
    return r;
  }

  /* ********************************************************** */
  // ((CASE Expr) | DEFAULT) COLON (Stmt)*
  public static boolean CaseStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CaseStmt")) return false;
    if (!nextTokenIs(b, "<case stmt>", CASE, DEFAULT)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, CASE_STMT, "<case stmt>");
    r = CaseStmt_0(b, l + 1);
    r = r && consumeToken(b, COLON);
    r = r && CaseStmt_2(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (CASE Expr) | DEFAULT
  private static boolean CaseStmt_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CaseStmt_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = CaseStmt_0_0(b, l + 1);
    if (!r) r = consumeToken(b, DEFAULT);
    exit_section_(b, m, null, r);
    return r;
  }

  // CASE Expr
  private static boolean CaseStmt_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CaseStmt_0_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, CASE);
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (Stmt)*
  private static boolean CaseStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CaseStmt_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!CaseStmt_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "CaseStmt_2", c)) break;
    }
    return true;
  }

  // (Stmt)
  private static boolean CaseStmt_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CaseStmt_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Stmt(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // (SHARED|ABSTRACT|FINAL|EXTERNAL)* CLASS ID (SEMI | ((COLON ID (COMMA ID)*)? LBRACE (VirtProp|Func|Var|FuncDef)* RBRACE))
  public static boolean Clazz(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Clazz")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, CLAZZ, "<clazz>");
    r = Clazz_0(b, l + 1);
    r = r && consumeTokens(b, 0, CLASS, ID);
    r = r && Clazz_3(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (SHARED|ABSTRACT|FINAL|EXTERNAL)*
  private static boolean Clazz_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Clazz_0")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Clazz_0_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Clazz_0", c)) break;
    }
    return true;
  }

  // SHARED|ABSTRACT|FINAL|EXTERNAL
  private static boolean Clazz_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Clazz_0_0")) return false;
    boolean r;
    r = consumeToken(b, SHARED);
    if (!r) r = consumeToken(b, ABSTRACT);
    if (!r) r = consumeToken(b, FINAL);
    if (!r) r = consumeToken(b, EXTERNAL);
    return r;
  }

  // SEMI | ((COLON ID (COMMA ID)*)? LBRACE (VirtProp|Func|Var|FuncDef)* RBRACE)
  private static boolean Clazz_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Clazz_3")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, SEMI);
    if (!r) r = Clazz_3_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (COLON ID (COMMA ID)*)? LBRACE (VirtProp|Func|Var|FuncDef)* RBRACE
  private static boolean Clazz_3_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Clazz_3_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Clazz_3_1_0(b, l + 1);
    r = r && consumeToken(b, LBRACE);
    r = r && Clazz_3_1_2(b, l + 1);
    r = r && consumeToken(b, RBRACE);
    exit_section_(b, m, null, r);
    return r;
  }

  // (COLON ID (COMMA ID)*)?
  private static boolean Clazz_3_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Clazz_3_1_0")) return false;
    Clazz_3_1_0_0(b, l + 1);
    return true;
  }

  // COLON ID (COMMA ID)*
  private static boolean Clazz_3_1_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Clazz_3_1_0_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, COLON, ID);
    r = r && Clazz_3_1_0_0_2(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (COMMA ID)*
  private static boolean Clazz_3_1_0_0_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Clazz_3_1_0_0_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Clazz_3_1_0_0_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Clazz_3_1_0_0_2", c)) break;
    }
    return true;
  }

  // COMMA ID
  private static boolean Clazz_3_1_0_0_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Clazz_3_1_0_0_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, COMMA, ID);
    exit_section_(b, m, null, r);
    return r;
  }

  // (VirtProp|Func|Var|FuncDef)*
  private static boolean Clazz_3_1_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Clazz_3_1_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Clazz_3_1_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Clazz_3_1_2", c)) break;
    }
    return true;
  }

  // VirtProp|Func|Var|FuncDef
  private static boolean Clazz_3_1_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Clazz_3_1_2_0")) return false;
    boolean r;
    r = VirtProp(b, l + 1);
    if (!r) r = Func(b, l + 1);
    if (!r) r = Var(b, l + 1);
    if (!r) r = FuncDef(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // Expr (QUEST Assign COLON Assign)?
  public static boolean Condition(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Condition")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, CONDITION, "<condition>");
    r = Expr(b, l + 1, -1);
    r = r && Condition_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (QUEST Assign COLON Assign)?
  private static boolean Condition_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Condition_1")) return false;
    Condition_1_0(b, l + 1);
    return true;
  }

  // QUEST Assign COLON Assign
  private static boolean Condition_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Condition_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, QUEST);
    r = r && Assign(b, l + 1);
    r = r && consumeToken(b, COLON);
    r = r && Assign(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // ID|PrimType|QUEST|AUTO
  public static boolean DataType(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "DataType")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, DATA_TYPE, "<data type>");
    r = consumeToken(b, ID);
    if (!r) r = PrimType(b, l + 1);
    if (!r) r = consumeToken(b, QUEST);
    if (!r) r = consumeToken(b, AUTO);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // DO Stmt WHILE LPAREN Assign RPAREN SEMI
  public static boolean DoWhileStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "DoWhileStmt")) return false;
    if (!nextTokenIs(b, DO)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, DO);
    r = r && Stmt(b, l + 1);
    r = r && consumeTokens(b, 0, WHILE, LPAREN);
    r = r && Assign(b, l + 1);
    r = r && consumeTokens(b, 0, RPAREN, SEMI);
    exit_section_(b, m, DO_WHILE_STMT, r);
    return r;
  }

  /* ********************************************************** */
  // Assign? SEMI
  public static boolean ExprStat(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ExprStat")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, EXPR_STAT, "<expr stat>");
    r = ExprStat_0(b, l + 1);
    r = r && consumeToken(b, SEMI);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // Assign?
  private static boolean ExprStat_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ExprStat_0")) return false;
    Assign(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // FOR LPAREN (Var | ExprStat) ExprStat (Assign (COMMA Assign)*)? RPAREN Stmt
  public static boolean ForStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ForStmt")) return false;
    if (!nextTokenIs(b, FOR)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, FOR, LPAREN);
    r = r && ForStmt_2(b, l + 1);
    r = r && ExprStat(b, l + 1);
    r = r && ForStmt_4(b, l + 1);
    r = r && consumeToken(b, RPAREN);
    r = r && Stmt(b, l + 1);
    exit_section_(b, m, FOR_STMT, r);
    return r;
  }

  // Var | ExprStat
  private static boolean ForStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ForStmt_2")) return false;
    boolean r;
    r = Var(b, l + 1);
    if (!r) r = ExprStat(b, l + 1);
    return r;
  }

  // (Assign (COMMA Assign)*)?
  private static boolean ForStmt_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ForStmt_4")) return false;
    ForStmt_4_0(b, l + 1);
    return true;
  }

  // Assign (COMMA Assign)*
  private static boolean ForStmt_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ForStmt_4_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Assign(b, l + 1);
    r = r && ForStmt_4_0_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (COMMA Assign)*
  private static boolean ForStmt_4_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ForStmt_4_0_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!ForStmt_4_0_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ForStmt_4_0_1", c)) break;
    }
    return true;
  }

  // COMMA Assign
  private static boolean ForStmt_4_0_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ForStmt_4_0_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && Assign(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // (SHARED|EXTERNAL)* (PRIVATE|PROTECTED)?  (((Type AND?)|TILDE))? ID ParamList CONST? FuncAttr (SEMI | StatBlock)
  public static boolean Func(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Func")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, FUNC, "<func>");
    r = Func_0(b, l + 1);
    r = r && Func_1(b, l + 1);
    r = r && Func_2(b, l + 1);
    r = r && consumeToken(b, ID);
    r = r && ParamList(b, l + 1);
    r = r && Func_5(b, l + 1);
    r = r && FuncAttr(b, l + 1);
    r = r && Func_7(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (SHARED|EXTERNAL)*
  private static boolean Func_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Func_0")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Func_0_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Func_0", c)) break;
    }
    return true;
  }

  // SHARED|EXTERNAL
  private static boolean Func_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Func_0_0")) return false;
    boolean r;
    r = consumeToken(b, SHARED);
    if (!r) r = consumeToken(b, EXTERNAL);
    return r;
  }

  // (PRIVATE|PROTECTED)?
  private static boolean Func_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Func_1")) return false;
    Func_1_0(b, l + 1);
    return true;
  }

  // PRIVATE|PROTECTED
  private static boolean Func_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Func_1_0")) return false;
    boolean r;
    r = consumeToken(b, PRIVATE);
    if (!r) r = consumeToken(b, PROTECTED);
    return r;
  }

  // (((Type AND?)|TILDE))?
  private static boolean Func_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Func_2")) return false;
    Func_2_0(b, l + 1);
    return true;
  }

  // (Type AND?)|TILDE
  private static boolean Func_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Func_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Func_2_0_0(b, l + 1);
    if (!r) r = consumeToken(b, TILDE);
    exit_section_(b, m, null, r);
    return r;
  }

  // Type AND?
  private static boolean Func_2_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Func_2_0_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Type(b, l + 1);
    r = r && Func_2_0_0_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // AND?
  private static boolean Func_2_0_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Func_2_0_0_1")) return false;
    consumeToken(b, AND);
    return true;
  }

  // CONST?
  private static boolean Func_5(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Func_5")) return false;
    consumeToken(b, CONST);
    return true;
  }

  // SEMI | StatBlock
  private static boolean Func_7(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Func_7")) return false;
    boolean r;
    r = consumeToken(b, SEMI);
    if (!r) r = StatBlock(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // (OVERRIDE|FINAL|EXPLICIT|PROPERTY)*
  public static boolean FuncAttr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncAttr")) return false;
    Marker m = enter_section_(b, l, _NONE_, FUNC_ATTR, "<func attr>");
    while (true) {
      int c = current_position_(b);
      if (!FuncAttr_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "FuncAttr", c)) break;
    }
    exit_section_(b, l, m, true, false, null);
    return true;
  }

  // OVERRIDE|FINAL|EXPLICIT|PROPERTY
  private static boolean FuncAttr_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncAttr_0")) return false;
    boolean r;
    r = consumeToken(b, OVERRIDE);
    if (!r) r = consumeToken(b, FINAL);
    if (!r) r = consumeToken(b, EXPLICIT);
    if (!r) r = consumeToken(b, PROPERTY);
    return r;
  }

  /* ********************************************************** */
  // Scope ID (ArgList | (LPAREN RPAREN))
  public static boolean FuncCall(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncCall")) return false;
    if (!nextTokenIs(b, "<func call>", COLON_COLON, ID)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, FUNC_CALL, "<func call>");
    r = Scope(b, l + 1);
    r = r && consumeToken(b, ID);
    r = r && FuncCall_2(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // ArgList | (LPAREN RPAREN)
  private static boolean FuncCall_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncCall_2")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = ArgList(b, l + 1);
    if (!r) r = FuncCall_2_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // LPAREN RPAREN
  private static boolean FuncCall_2_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncCall_2_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, LPAREN, RPAREN);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // (EXTERNAL|SHARED)* FUNCDEF Type AND? ID ParamList SEMI
  public static boolean FuncDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, FUNC_DEF, "<func def>");
    r = FuncDef_0(b, l + 1);
    r = r && consumeToken(b, FUNCDEF);
    r = r && Type(b, l + 1);
    r = r && FuncDef_3(b, l + 1);
    r = r && consumeToken(b, ID);
    r = r && ParamList(b, l + 1);
    r = r && consumeToken(b, SEMI);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (EXTERNAL|SHARED)*
  private static boolean FuncDef_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef_0")) return false;
    while (true) {
      int c = current_position_(b);
      if (!FuncDef_0_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "FuncDef_0", c)) break;
    }
    return true;
  }

  // EXTERNAL|SHARED
  private static boolean FuncDef_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef_0_0")) return false;
    boolean r;
    r = consumeToken(b, EXTERNAL);
    if (!r) r = consumeToken(b, SHARED);
    return r;
  }

  // AND?
  private static boolean FuncDef_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef_3")) return false;
    consumeToken(b, AND);
    return true;
  }

  /* ********************************************************** */
  // LT Type (COMMA Type)* GT
  public static boolean GenericType(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GenericType")) return false;
    if (!nextTokenIs(b, LT)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, LT);
    r = r && Type(b, l + 1);
    r = r && GenericType_2(b, l + 1);
    r = r && consumeToken(b, GT);
    exit_section_(b, m, GENERIC_TYPE, r);
    return r;
  }

  // (COMMA Type)*
  private static boolean GenericType_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GenericType_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!GenericType_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "GenericType_2", c)) break;
    }
    return true;
  }

  // COMMA Type
  private static boolean GenericType_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GenericType_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && Type(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // IF LPAREN Assign RPAREN Stmt (ELSE Stmt)?
  public static boolean IfStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt")) return false;
    if (!nextTokenIs(b, IF)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, IF, LPAREN);
    r = r && Assign(b, l + 1);
    r = r && consumeToken(b, RPAREN);
    r = r && Stmt(b, l + 1);
    r = r && IfStmt_5(b, l + 1);
    exit_section_(b, m, IF_STMT, r);
    return r;
  }

  // (ELSE Stmt)?
  private static boolean IfStmt_5(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_5")) return false;
    IfStmt_5_0(b, l + 1);
    return true;
  }

  // ELSE Stmt
  private static boolean IfStmt_5_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_5_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ELSE);
    r = r && Stmt(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // HASH INCLUDE STRVAL
  public static boolean IncludeStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IncludeStmt")) return false;
    if (!nextTokenIs(b, HASH)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, HASH, INCLUDE, STRVAL);
    exit_section_(b, m, INCLUDE_STMT, r);
    return r;
  }

  /* ********************************************************** */
  // LBRACE
  //                 (Assign|InitList)?
  //                 (
  //                     COMMA
  //                     (Assign|InitList)?
  //                 )*
  //                 RBRACE
  public static boolean InitList(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "InitList")) return false;
    if (!nextTokenIs(b, LBRACE)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, LBRACE);
    r = r && InitList_1(b, l + 1);
    r = r && InitList_2(b, l + 1);
    r = r && consumeToken(b, RBRACE);
    exit_section_(b, m, INIT_LIST, r);
    return r;
  }

  // (Assign|InitList)?
  private static boolean InitList_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "InitList_1")) return false;
    InitList_1_0(b, l + 1);
    return true;
  }

  // Assign|InitList
  private static boolean InitList_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "InitList_1_0")) return false;
    boolean r;
    r = Assign(b, l + 1);
    if (!r) r = InitList(b, l + 1);
    return r;
  }

  // (
  //                     COMMA
  //                     (Assign|InitList)?
  //                 )*
  private static boolean InitList_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "InitList_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!InitList_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "InitList_2", c)) break;
    }
    return true;
  }

  // COMMA
  //                     (Assign|InitList)?
  private static boolean InitList_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "InitList_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && InitList_2_0_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (Assign|InitList)?
  private static boolean InitList_2_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "InitList_2_0_1")) return false;
    InitList_2_0_1_0(b, l + 1);
    return true;
  }

  // Assign|InitList
  private static boolean InitList_2_0_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "InitList_2_0_1_0")) return false;
    boolean r;
    r = Assign(b, l + 1);
    if (!r) r = InitList(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // FUNCTION LPAREN ((Type TypeMod)? ID? (COMMA (Type TypeMod)? ID?)*)? RPAREN StatBlock
  public static boolean Lambda(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda")) return false;
    if (!nextTokenIs(b, FUNCTION)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, FUNCTION, LPAREN);
    r = r && Lambda_2(b, l + 1);
    r = r && consumeToken(b, RPAREN);
    r = r && StatBlock(b, l + 1);
    exit_section_(b, m, LAMBDA, r);
    return r;
  }

  // ((Type TypeMod)? ID? (COMMA (Type TypeMod)? ID?)*)?
  private static boolean Lambda_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda_2")) return false;
    Lambda_2_0(b, l + 1);
    return true;
  }

  // (Type TypeMod)? ID? (COMMA (Type TypeMod)? ID?)*
  private static boolean Lambda_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Lambda_2_0_0(b, l + 1);
    r = r && Lambda_2_0_1(b, l + 1);
    r = r && Lambda_2_0_2(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (Type TypeMod)?
  private static boolean Lambda_2_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda_2_0_0")) return false;
    Lambda_2_0_0_0(b, l + 1);
    return true;
  }

  // Type TypeMod
  private static boolean Lambda_2_0_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda_2_0_0_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Type(b, l + 1);
    r = r && TypeMod(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // ID?
  private static boolean Lambda_2_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda_2_0_1")) return false;
    consumeToken(b, ID);
    return true;
  }

  // (COMMA (Type TypeMod)? ID?)*
  private static boolean Lambda_2_0_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda_2_0_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Lambda_2_0_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Lambda_2_0_2", c)) break;
    }
    return true;
  }

  // COMMA (Type TypeMod)? ID?
  private static boolean Lambda_2_0_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda_2_0_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && Lambda_2_0_2_0_1(b, l + 1);
    r = r && Lambda_2_0_2_0_2(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (Type TypeMod)?
  private static boolean Lambda_2_0_2_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda_2_0_2_0_1")) return false;
    Lambda_2_0_2_0_1_0(b, l + 1);
    return true;
  }

  // Type TypeMod
  private static boolean Lambda_2_0_2_0_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda_2_0_2_0_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Type(b, l + 1);
    r = r && TypeMod(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // ID?
  private static boolean Lambda_2_0_2_0_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lambda_2_0_2_0_2")) return false;
    consumeToken(b, ID);
    return true;
  }

  /* ********************************************************** */
  // NAMESPACE ID (COLON_COLON ID)* LBRACE RootItem* RBRACE
  public static boolean Nspace(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Nspace")) return false;
    if (!nextTokenIs(b, NAMESPACE)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, NAMESPACE, ID);
    r = r && Nspace_2(b, l + 1);
    r = r && consumeToken(b, LBRACE);
    r = r && Nspace_4(b, l + 1);
    r = r && consumeToken(b, RBRACE);
    exit_section_(b, m, NSPACE, r);
    return r;
  }

  // (COLON_COLON ID)*
  private static boolean Nspace_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Nspace_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Nspace_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Nspace_2", c)) break;
    }
    return true;
  }

  // COLON_COLON ID
  private static boolean Nspace_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Nspace_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, COLON_COLON, ID);
    exit_section_(b, m, null, r);
    return r;
  }

  // RootItem*
  private static boolean Nspace_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Nspace_4")) return false;
    while (true) {
      int c = current_position_(b);
      if (!RootItem(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Nspace_4", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // Type TypeMod ID? (EQ Expr)?
  public static boolean Param(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Param")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, PARAM, "<param>");
    r = Type(b, l + 1);
    r = r && TypeMod(b, l + 1);
    r = r && Param_2(b, l + 1);
    r = r && Param_3(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // ID?
  private static boolean Param_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Param_2")) return false;
    consumeToken(b, ID);
    return true;
  }

  // (EQ Expr)?
  private static boolean Param_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Param_3")) return false;
    Param_3_0(b, l + 1);
    return true;
  }

  // EQ Expr
  private static boolean Param_3_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Param_3_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // LPAREN (VOID | (Param (COMMA Param)*) )? RPAREN
  public static boolean ParamList(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamList")) return false;
    if (!nextTokenIs(b, LPAREN)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, LPAREN);
    r = r && ParamList_1(b, l + 1);
    r = r && consumeToken(b, RPAREN);
    exit_section_(b, m, PARAM_LIST, r);
    return r;
  }

  // (VOID | (Param (COMMA Param)*) )?
  private static boolean ParamList_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamList_1")) return false;
    ParamList_1_0(b, l + 1);
    return true;
  }

  // VOID | (Param (COMMA Param)*)
  private static boolean ParamList_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamList_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, VOID);
    if (!r) r = ParamList_1_0_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // Param (COMMA Param)*
  private static boolean ParamList_1_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamList_1_0_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Param(b, l + 1);
    r = r && ParamList_1_0_1_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (COMMA Param)*
  private static boolean ParamList_1_0_1_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamList_1_0_1_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!ParamList_1_0_1_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ParamList_1_0_1_1", c)) break;
    }
    return true;
  }

  // COMMA Param
  private static boolean ParamList_1_0_1_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamList_1_0_1_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && Param(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
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
  // ARRAY|BOOL|CODE|DOUBLE|FLOAT|HANDLE|INT|INT8|INT16|INT32|INT64|STRING|UINT|UINT16|UINT32|UINT64|VOID|ID
  public static boolean PrimType(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "PrimType")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, PRIM_TYPE, "<prim type>");
    r = consumeToken(b, ARRAY);
    if (!r) r = consumeToken(b, BOOL);
    if (!r) r = consumeToken(b, CODE);
    if (!r) r = consumeToken(b, DOUBLE);
    if (!r) r = consumeToken(b, FLOAT);
    if (!r) r = consumeToken(b, HANDLE);
    if (!r) r = consumeToken(b, INT);
    if (!r) r = consumeToken(b, INT8);
    if (!r) r = consumeToken(b, INT16);
    if (!r) r = consumeToken(b, INT32);
    if (!r) r = consumeToken(b, INT64);
    if (!r) r = consumeToken(b, STRING);
    if (!r) r = consumeToken(b, UINT);
    if (!r) r = consumeToken(b, UINT16);
    if (!r) r = consumeToken(b, UINT32);
    if (!r) r = consumeToken(b, UINT64);
    if (!r) r = consumeToken(b, VOID);
    if (!r) r = consumeToken(b, ID);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // RETURN Assign? SEMI
  public static boolean ReturnStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ReturnStmt")) return false;
    if (!nextTokenIs(b, RETURN)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, RETURN);
    r = r && ReturnStmt_1(b, l + 1);
    r = r && consumeToken(b, SEMI);
    exit_section_(b, m, RETURN_STMT, r);
    return r;
  }

  // Assign?
  private static boolean ReturnStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ReturnStmt_1")) return false;
    Assign(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // RootItem*
  static boolean Root(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root")) return false;
    while (true) {
      int c = current_position_(b);
      if (!RootItem(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Root", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // IncludeStmt|Var|Func|FuncDef|Clazz|Nspace|SEMI
  public static boolean RootItem(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "RootItem")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, ROOT_ITEM, "<root item>");
    r = IncludeStmt(b, l + 1);
    if (!r) r = Var(b, l + 1);
    if (!r) r = Func(b, l + 1);
    if (!r) r = FuncDef(b, l + 1);
    if (!r) r = Clazz(b, l + 1);
    if (!r) r = Nspace(b, l + 1);
    if (!r) r = consumeToken(b, SEMI);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // COLON_COLON? (ID COLON_COLON)* (ID GenericType? COLON_COLON)?
  public static boolean Scope(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Scope")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, SCOPE, "<scope>");
    r = Scope_0(b, l + 1);
    r = r && Scope_1(b, l + 1);
    r = r && Scope_2(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // COLON_COLON?
  private static boolean Scope_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Scope_0")) return false;
    consumeToken(b, COLON_COLON);
    return true;
  }

  // (ID COLON_COLON)*
  private static boolean Scope_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Scope_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Scope_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Scope_1", c)) break;
    }
    return true;
  }

  // ID COLON_COLON
  private static boolean Scope_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Scope_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, ID, COLON_COLON);
    exit_section_(b, m, null, r);
    return r;
  }

  // (ID GenericType? COLON_COLON)?
  private static boolean Scope_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Scope_2")) return false;
    Scope_2_0(b, l + 1);
    return true;
  }

  // ID GenericType? COLON_COLON
  private static boolean Scope_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Scope_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    r = r && Scope_2_0_1(b, l + 1);
    r = r && consumeToken(b, COLON_COLON);
    exit_section_(b, m, null, r);
    return r;
  }

  // GenericType?
  private static boolean Scope_2_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Scope_2_0_1")) return false;
    GenericType(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // LBRACE (Var | Stmt)* RBRACE
  public static boolean StatBlock(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StatBlock")) return false;
    if (!nextTokenIs(b, LBRACE)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, LBRACE);
    r = r && StatBlock_1(b, l + 1);
    r = r && consumeToken(b, RBRACE);
    exit_section_(b, m, STAT_BLOCK, r);
    return r;
  }

  // (Var | Stmt)*
  private static boolean StatBlock_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StatBlock_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!StatBlock_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "StatBlock_1", c)) break;
    }
    return true;
  }

  // Var | Stmt
  private static boolean StatBlock_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StatBlock_1_0")) return false;
    boolean r;
    r = Var(b, l + 1);
    if (!r) r = Stmt(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // StatBlock|ExprStat|IfStmt|ForStmt|WhileStnt|DoWhileStmt|SwitchStmt|BreakStmt|ReturnStmt
  public static boolean Stmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Stmt")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, STMT, "<stmt>");
    r = StatBlock(b, l + 1);
    if (!r) r = ExprStat(b, l + 1);
    if (!r) r = IfStmt(b, l + 1);
    if (!r) r = ForStmt(b, l + 1);
    if (!r) r = WhileStnt(b, l + 1);
    if (!r) r = DoWhileStmt(b, l + 1);
    if (!r) r = SwitchStmt(b, l + 1);
    if (!r) r = BreakStmt(b, l + 1);
    if (!r) r = ReturnStmt(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // SWITCH LPAREN Assign RPAREN LBRACE (CaseStmt)* RBRACE
  public static boolean SwitchStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SwitchStmt")) return false;
    if (!nextTokenIs(b, SWITCH)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, SWITCH, LPAREN);
    r = r && Assign(b, l + 1);
    r = r && consumeTokens(b, 0, RPAREN, LBRACE);
    r = r && SwitchStmt_5(b, l + 1);
    r = r && consumeToken(b, RBRACE);
    exit_section_(b, m, SWITCH_STMT, r);
    return r;
  }

  // (CaseStmt)*
  private static boolean SwitchStmt_5(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SwitchStmt_5")) return false;
    while (true) {
      int c = current_position_(b);
      if (!SwitchStmt_5_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "SwitchStmt_5", c)) break;
    }
    return true;
  }

  // (CaseStmt)
  private static boolean SwitchStmt_5_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SwitchStmt_5_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = CaseStmt(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // CONST?
  //             Scope
  //             DataType
  //             GenericType?
  //             (
  //                 (LBRACK RBRACK)|(AT CONST?)
  //             )*
  public static boolean Type(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Type")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, TYPE, "<type>");
    r = Type_0(b, l + 1);
    r = r && Scope(b, l + 1);
    r = r && DataType(b, l + 1);
    r = r && Type_3(b, l + 1);
    r = r && Type_4(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // CONST?
  private static boolean Type_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Type_0")) return false;
    consumeToken(b, CONST);
    return true;
  }

  // GenericType?
  private static boolean Type_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Type_3")) return false;
    GenericType(b, l + 1);
    return true;
  }

  // (
  //                 (LBRACK RBRACK)|(AT CONST?)
  //             )*
  private static boolean Type_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Type_4")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Type_4_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Type_4", c)) break;
    }
    return true;
  }

  // (LBRACK RBRACK)|(AT CONST?)
  private static boolean Type_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Type_4_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Type_4_0_0(b, l + 1);
    if (!r) r = Type_4_0_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // LBRACK RBRACK
  private static boolean Type_4_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Type_4_0_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, LBRACK, RBRACK);
    exit_section_(b, m, null, r);
    return r;
  }

  // AT CONST?
  private static boolean Type_4_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Type_4_0_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, AT);
    r = r && Type_4_0_1_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // CONST?
  private static boolean Type_4_0_1_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Type_4_0_1_1")) return false;
    consumeToken(b, CONST);
    return true;
  }

  /* ********************************************************** */
  // (AND (IN|OUT|INOUT)?)?
  public static boolean TypeMod(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypeMod")) return false;
    Marker m = enter_section_(b, l, _NONE_, TYPE_MOD, "<type mod>");
    TypeMod_0(b, l + 1);
    exit_section_(b, l, m, true, false, null);
    return true;
  }

  // AND (IN|OUT|INOUT)?
  private static boolean TypeMod_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypeMod_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, AND);
    r = r && TypeMod_0_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (IN|OUT|INOUT)?
  private static boolean TypeMod_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypeMod_0_1")) return false;
    TypeMod_0_1_0(b, l + 1);
    return true;
  }

  // IN|OUT|INOUT
  private static boolean TypeMod_0_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypeMod_0_1_0")) return false;
    boolean r;
    r = consumeToken(b, IN);
    if (!r) r = consumeToken(b, OUT);
    if (!r) r = consumeToken(b, INOUT);
    return r;
  }

  /* ********************************************************** */
  // (PRIVATE|PROTECTED)?
  //         Type
  //         ID
  //         (
  //             (EQ (InitList | Expr)) | ArgList
  //         )?
  //         (
  //             COMMA
  //             ID
  //             (
  //                 (EQ (InitList|Expr)) | ArgList
  //             )?
  //         )*
  //         SEMI
  public static boolean Var(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, VAR, "<var>");
    r = Var_0(b, l + 1);
    r = r && Type(b, l + 1);
    r = r && consumeToken(b, ID);
    r = r && Var_3(b, l + 1);
    r = r && Var_4(b, l + 1);
    r = r && consumeToken(b, SEMI);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (PRIVATE|PROTECTED)?
  private static boolean Var_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var_0")) return false;
    Var_0_0(b, l + 1);
    return true;
  }

  // PRIVATE|PROTECTED
  private static boolean Var_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var_0_0")) return false;
    boolean r;
    r = consumeToken(b, PRIVATE);
    if (!r) r = consumeToken(b, PROTECTED);
    return r;
  }

  // (
  //             (EQ (InitList | Expr)) | ArgList
  //         )?
  private static boolean Var_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var_3")) return false;
    Var_3_0(b, l + 1);
    return true;
  }

  // (EQ (InitList | Expr)) | ArgList
  private static boolean Var_3_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var_3_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Var_3_0_0(b, l + 1);
    if (!r) r = ArgList(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // EQ (InitList | Expr)
  private static boolean Var_3_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var_3_0_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Var_3_0_0_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // InitList | Expr
  private static boolean Var_3_0_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var_3_0_0_1")) return false;
    boolean r;
    r = InitList(b, l + 1);
    if (!r) r = Expr(b, l + 1, -1);
    return r;
  }

  // (
  //             COMMA
  //             ID
  //             (
  //                 (EQ (InitList|Expr)) | ArgList
  //             )?
  //         )*
  private static boolean Var_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var_4")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Var_4_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Var_4", c)) break;
    }
    return true;
  }

  // COMMA
  //             ID
  //             (
  //                 (EQ (InitList|Expr)) | ArgList
  //             )?
  private static boolean Var_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var_4_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, COMMA, ID);
    r = r && Var_4_0_2(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (
  //                 (EQ (InitList|Expr)) | ArgList
  //             )?
  private static boolean Var_4_0_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var_4_0_2")) return false;
    Var_4_0_2_0(b, l + 1);
    return true;
  }

  // (EQ (InitList|Expr)) | ArgList
  private static boolean Var_4_0_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var_4_0_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Var_4_0_2_0_0(b, l + 1);
    if (!r) r = ArgList(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // EQ (InitList|Expr)
  private static boolean Var_4_0_2_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var_4_0_2_0_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Var_4_0_2_0_0_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // InitList|Expr
  private static boolean Var_4_0_2_0_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Var_4_0_2_0_0_1")) return false;
    boolean r;
    r = InitList(b, l + 1);
    if (!r) r = Expr(b, l + 1, -1);
    return r;
  }

  /* ********************************************************** */
  // (PRIVATE|PROTECTED)? Type AND? ID LBRACE ((GET|SET) CONST? FuncAttr (StatBlock | SEMI))*
  public static boolean VirtProp(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VirtProp")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, VIRT_PROP, "<virt prop>");
    r = VirtProp_0(b, l + 1);
    r = r && Type(b, l + 1);
    r = r && VirtProp_2(b, l + 1);
    r = r && consumeTokens(b, 0, ID, LBRACE);
    r = r && VirtProp_5(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (PRIVATE|PROTECTED)?
  private static boolean VirtProp_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VirtProp_0")) return false;
    VirtProp_0_0(b, l + 1);
    return true;
  }

  // PRIVATE|PROTECTED
  private static boolean VirtProp_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VirtProp_0_0")) return false;
    boolean r;
    r = consumeToken(b, PRIVATE);
    if (!r) r = consumeToken(b, PROTECTED);
    return r;
  }

  // AND?
  private static boolean VirtProp_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VirtProp_2")) return false;
    consumeToken(b, AND);
    return true;
  }

  // ((GET|SET) CONST? FuncAttr (StatBlock | SEMI))*
  private static boolean VirtProp_5(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VirtProp_5")) return false;
    while (true) {
      int c = current_position_(b);
      if (!VirtProp_5_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "VirtProp_5", c)) break;
    }
    return true;
  }

  // (GET|SET) CONST? FuncAttr (StatBlock | SEMI)
  private static boolean VirtProp_5_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VirtProp_5_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = VirtProp_5_0_0(b, l + 1);
    r = r && VirtProp_5_0_1(b, l + 1);
    r = r && FuncAttr(b, l + 1);
    r = r && VirtProp_5_0_3(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // GET|SET
  private static boolean VirtProp_5_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VirtProp_5_0_0")) return false;
    boolean r;
    r = consumeToken(b, GET);
    if (!r) r = consumeToken(b, SET);
    return r;
  }

  // CONST?
  private static boolean VirtProp_5_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VirtProp_5_0_1")) return false;
    consumeToken(b, CONST);
    return true;
  }

  // StatBlock | SEMI
  private static boolean VirtProp_5_0_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VirtProp_5_0_3")) return false;
    boolean r;
    r = StatBlock(b, l + 1);
    if (!r) r = consumeToken(b, SEMI);
    return r;
  }

  /* ********************************************************** */
  // WHILE LPAREN Assign RPAREN Stmt
  public static boolean WhileStnt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "WhileStnt")) return false;
    if (!nextTokenIs(b, WHILE)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, WHILE, LPAREN);
    r = r && Assign(b, l + 1);
    r = r && consumeToken(b, RPAREN);
    r = r && Stmt(b, l + 1);
    exit_section_(b, m, WHILE_STNT, r);
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
  //    PREFIX(NotExpr) PREFIX(PreIncExpr) POSTFIX(PostIncExpr) PREFIX(PreDecExpr)
  //    POSTFIX(PostDecExpr)
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
    if (!r) r = PreIncExpr(b, l + 1);
    if (!r) r = PreDecExpr(b, l + 1);
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
      else if (g < 4 && consumeTokenSmart(b, PLUS_PLUS)) {
        r = true;
        exit_section_(b, l, m, POST_INC_EXPR, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, MINUS_MINUS)) {
        r = true;
        exit_section_(b, l, m, POST_DEC_EXPR, r, true, null);
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

  public static boolean PreIncExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "PreIncExpr")) return false;
    if (!nextTokenIsSmart(b, PLUS_PLUS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, PLUS_PLUS);
    p = r;
    r = p && Expr(b, l, 4);
    exit_section_(b, l, m, PRE_INC_EXPR, r, p, null);
    return r || p;
  }

  public static boolean PreDecExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "PreDecExpr")) return false;
    if (!nextTokenIsSmart(b, MINUS_MINUS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, MINUS_MINUS);
    p = r;
    r = p && Expr(b, l, 4);
    exit_section_(b, l, m, PRE_DEC_EXPR, r, p, null);
    return r || p;
  }

  // FALSE |
  //     NULL |
  //     TRUE |
  //     ParenExpr |
  //     ArrayAccess |
  //     FuncCall |
  //     Lambda |
  //     REALVAL |
  //     HEXVAL |
  //     INTVAL |
  //     STRVAL |
  //     (AT? ID)
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
    if (!r) r = Lambda(b, l + 1);
    if (!r) r = consumeTokenSmart(b, REALVAL);
    if (!r) r = consumeTokenSmart(b, HEXVAL);
    if (!r) r = consumeTokenSmart(b, INTVAL);
    if (!r) r = consumeTokenSmart(b, STRVAL);
    if (!r) r = PrimaryExpr_11(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // AT? ID
  private static boolean PrimaryExpr_11(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "PrimaryExpr_11")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = PrimaryExpr_11_0(b, l + 1);
    r = r && consumeToken(b, ID);
    exit_section_(b, m, null, r);
    return r;
  }

  // AT?
  private static boolean PrimaryExpr_11_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "PrimaryExpr_11_0")) return false;
    consumeTokenSmart(b, AT);
    return true;
  }

}
