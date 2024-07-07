// This is a generated file. Not intended for manual editing.
package raft.war.language.vjass.grammar;

import com.intellij.lang.PsiBuilder;
import com.intellij.lang.PsiBuilder.Marker;
import static raft.war.language.vjass.psi.VjassTypes.*;
import static com.intellij.lang.parser.GeneratedParserUtilBase.*;
import com.intellij.psi.tree.IElementType;
import com.intellij.lang.ASTNode;
import com.intellij.psi.tree.TokenSet;
import com.intellij.lang.PsiParser;
import com.intellij.lang.LightPsiParser;

@SuppressWarnings({"SimplifiableIfStatement", "UnusedAssignment"})
public class VjassParser implements PsiParser, LightPsiParser {

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
      EQ_EXPR, EXPR, GT_EQ_EXPR, GT_EXPR,
      LT_EQ_EXPR, LT_EXPR, MINUS_EXPR, MINUS_UNARY_EXPR,
      MUL_EXPR, MUL_UNARY_EXPR, NEQ_EXPR, NOT_EXPR,
      OR_EXPR, PAREN_EXPR, PLUS_EXPR, PLUS_UNARY_EXPR,
      PRIMARY_EXPR),
  };

  /* ********************************************************** */
  // Expr|FuncAsCode
  public static boolean Arg(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Arg")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, ARG, "<arg>");
    r = Expr(b, l + 1, -1);
    if (!r) r = FuncAsCode(b, l + 1);
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
  // IdDot LBRACK Expr? RBRACK
  public static boolean ArrayAccess(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArrayAccess")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, ARRAY_ACCESS, null);
    r = IdDot(b, l + 1);
    r = r && consumeToken(b, LBRACK);
    p = r; // pin = 2
    r = r && report_error_(b, ArrayAccess_2(b, l + 1));
    r = p && consumeToken(b, RBRACK) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Expr?
  private static boolean ArrayAccess_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArrayAccess_2")) return false;
    Expr(b, l + 1, -1);
    return true;
  }

  /* ********************************************************** */
  // FuncCall|ArrayAccess|ID
  public static boolean CallSetId(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallSetId")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = FuncCall(b, l + 1);
    if (!r) r = ArrayAccess(b, l + 1);
    if (!r) r = consumeToken(b, ID);
    exit_section_(b, m, CALL_SET_ID, r);
    return r;
  }

  /* ********************************************************** */
  // (CALL|SET)? CallSetId (DOT CallSetId)* (EQ Expr)?
  public static boolean CallSetStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallSetStmt")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, CALL_SET_STMT, "<call set stmt>");
    r = CallSetStmt_0(b, l + 1);
    r = r && CallSetId(b, l + 1);
    r = r && CallSetStmt_2(b, l + 1);
    r = r && CallSetStmt_3(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (CALL|SET)?
  private static boolean CallSetStmt_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallSetStmt_0")) return false;
    CallSetStmt_0_0(b, l + 1);
    return true;
  }

  // CALL|SET
  private static boolean CallSetStmt_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallSetStmt_0_0")) return false;
    boolean r;
    r = consumeToken(b, CALL);
    if (!r) r = consumeToken(b, SET);
    return r;
  }

  // (DOT CallSetId)*
  private static boolean CallSetStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallSetStmt_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!CallSetStmt_2_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "CallSetStmt_2", c)) break;
    }
    return true;
  }

  // DOT CallSetId
  private static boolean CallSetStmt_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallSetStmt_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, DOT);
    r = r && CallSetId(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (EQ Expr)?
  private static boolean CallSetStmt_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallSetStmt_3")) return false;
    CallSetStmt_3_0(b, l + 1);
    return true;
  }

  // EQ Expr
  private static boolean CallSetStmt_3_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallSetStmt_3_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // ELSEIF Expr THEN? Stmt*
  public static boolean ElseIfStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseIfStmt")) return false;
    if (!nextTokenIs(b, ELSEIF)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, ELSE_IF_STMT, null);
    r = consumeToken(b, ELSEIF);
    p = r; // pin = 1
    r = r && report_error_(b, Expr(b, l + 1, -1));
    r = p && report_error_(b, ElseIfStmt_2(b, l + 1)) && r;
    r = p && ElseIfStmt_3(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // THEN?
  private static boolean ElseIfStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseIfStmt_2")) return false;
    consumeToken(b, THEN);
    return true;
  }

  // Stmt*
  private static boolean ElseIfStmt_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseIfStmt_3")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Stmt(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ElseIfStmt_3", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // ELSE Stmt*
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

  // Stmt*
  private static boolean ElseStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseStmt_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Stmt(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ElseStmt_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // EXITWHEN Expr
  public static boolean ExitWhenStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ExitWhenStmt")) return false;
    if (!nextTokenIs(b, EXITWHEN)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, EXIT_WHEN_STMT, null);
    r = consumeToken(b, EXITWHEN);
    p = r; // pin = 1
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // Vis? CONSTANT? FUNCTION FuncDefName FuncTakes? FuncReturns? FuncBody* ENDFUNCTION
  public static boolean Fun(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Fun")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUN, "<fun>");
    r = Fun_0(b, l + 1);
    r = r && Fun_1(b, l + 1);
    r = r && consumeToken(b, FUNCTION);
    p = r; // pin = 3
    r = r && report_error_(b, FuncDefName(b, l + 1));
    r = p && report_error_(b, Fun_4(b, l + 1)) && r;
    r = p && report_error_(b, Fun_5(b, l + 1)) && r;
    r = p && report_error_(b, Fun_6(b, l + 1)) && r;
    r = p && consumeToken(b, ENDFUNCTION) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Vis?
  private static boolean Fun_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Fun_0")) return false;
    Vis(b, l + 1);
    return true;
  }

  // CONSTANT?
  private static boolean Fun_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Fun_1")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  // FuncTakes?
  private static boolean Fun_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Fun_4")) return false;
    FuncTakes(b, l + 1);
    return true;
  }

  // FuncReturns?
  private static boolean Fun_5(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Fun_5")) return false;
    FuncReturns(b, l + 1);
    return true;
  }

  // FuncBody*
  private static boolean Fun_6(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Fun_6")) return false;
    while (true) {
      int c = current_position_(b);
      if (!FuncBody(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Fun_6", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // FUNCTION FuncCallName
  public static boolean FuncAsCode(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncAsCode")) return false;
    if (!nextTokenIs(b, FUNCTION)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNC_AS_CODE, null);
    r = consumeToken(b, FUNCTION);
    p = r; // pin = 1
    r = r && FuncCallName(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // Stmt
  static boolean FuncBody(PsiBuilder b, int l) {
    return Stmt(b, l + 1);
  }

  /* ********************************************************** */
  // FuncCallName LPAREN ArgList? RPAREN
  public static boolean FuncCall(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncCall")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNC_CALL, null);
    r = FuncCallName(b, l + 1);
    r = r && consumeToken(b, LPAREN);
    p = r; // pin = 2
    r = r && report_error_(b, FuncCall_2(b, l + 1));
    r = p && consumeToken(b, RPAREN) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // ArgList?
  private static boolean FuncCall_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncCall_2")) return false;
    ArgList(b, l + 1);
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
  // RETURNS (NOTHING|TypeName)
  public static boolean FuncReturns(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncReturns")) return false;
    if (!nextTokenIs(b, RETURNS)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, RETURNS);
    r = r && FuncReturns_1(b, l + 1);
    exit_section_(b, m, FUNC_RETURNS, r);
    return r;
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
  // TAKES (NOTHING|TypedVarList)
  public static boolean FuncTakes(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncTakes")) return false;
    if (!nextTokenIs(b, TAKES)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, TAKES);
    r = r && FuncTakes_1(b, l + 1);
    exit_section_(b, m, FUNC_TAKES, r);
    return r;
  }

  // NOTHING|TypedVarList
  private static boolean FuncTakes_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncTakes_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, NOTHING);
    if (!r) r = TypedVarList(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // GLOBALS GvarDef* ENDGLOBALS
  public static boolean Glob(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Glob")) return false;
    if (!nextTokenIs(b, GLOBALS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, GLOB, null);
    r = consumeToken(b, GLOBALS);
    p = r; // pin = 1
    r = r && report_error_(b, Glob_1(b, l + 1));
    r = p && consumeToken(b, ENDGLOBALS) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // GvarDef*
  private static boolean Glob_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Glob_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!GvarDef(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Glob_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // Vis? CONSTANT? TypeName ARRAY? GvarName (EQ Expr)?
  public static boolean GvarDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDef")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, GVAR_DEF, "<gvar def>");
    r = GvarDef_0(b, l + 1);
    r = r && GvarDef_1(b, l + 1);
    r = r && TypeName(b, l + 1);
    p = r; // pin = 3
    r = r && report_error_(b, GvarDef_3(b, l + 1));
    r = p && report_error_(b, GvarName(b, l + 1)) && r;
    r = p && GvarDef_5(b, l + 1) && r;
    exit_section_(b, l, m, r, p, VjassParser::GvarDefRecover);
    return r || p;
  }

  // Vis?
  private static boolean GvarDef_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDef_0")) return false;
    Vis(b, l + 1);
    return true;
  }

  // CONSTANT?
  private static boolean GvarDef_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDef_1")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  // ARRAY?
  private static boolean GvarDef_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDef_3")) return false;
    consumeToken(b, ARRAY);
    return true;
  }

  // (EQ Expr)?
  private static boolean GvarDef_5(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDef_5")) return false;
    GvarDef_5_0(b, l + 1);
    return true;
  }

  // EQ Expr
  private static boolean GvarDef_5_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDef_5_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // !(CONSTANT|GLOBALS|ENDGLOBALS|TypeName|Vis)
  static boolean GvarDefRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDefRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !GvarDefRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // CONSTANT|GLOBALS|ENDGLOBALS|TypeName|Vis
  private static boolean GvarDefRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDefRecover_0")) return false;
    boolean r;
    r = consumeToken(b, CONSTANT);
    if (!r) r = consumeToken(b, GLOBALS);
    if (!r) r = consumeToken(b, ENDGLOBALS);
    if (!r) r = TypeName(b, l + 1);
    if (!r) r = Vis(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // ID
  public static boolean GvarName(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarName")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    exit_section_(b, m, GVAR_NAME, r);
    return r;
  }

  /* ********************************************************** */
  // HOOK ID ID
  public static boolean HookDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "HookDef")) return false;
    if (!nextTokenIs(b, HOOK)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, HOOK_DEF, null);
    r = consumeTokens(b, 1, HOOK, ID, ID);
    p = r; // pin = 1
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // ID (DOT ID)*
  public static boolean IdDot(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IdDot")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    r = r && IdDot_1(b, l + 1);
    exit_section_(b, m, ID_DOT, r);
    return r;
  }

  // (DOT ID)*
  private static boolean IdDot_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IdDot_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!IdDot_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "IdDot_1", c)) break;
    }
    return true;
  }

  // DOT ID
  private static boolean IdDot_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IdDot_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, DOT, ID);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // STATIC? IF Expr THEN? (FuncBody|ElseIfStmt|ElseStmt)* ENDIF
  public static boolean IfStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt")) return false;
    if (!nextTokenIs(b, "<if stmt>", IF, STATIC)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, IF_STMT, "<if stmt>");
    r = IfStmt_0(b, l + 1);
    r = r && consumeToken(b, IF);
    p = r; // pin = 2
    r = r && report_error_(b, Expr(b, l + 1, -1));
    r = p && report_error_(b, IfStmt_3(b, l + 1)) && r;
    r = p && report_error_(b, IfStmt_4(b, l + 1)) && r;
    r = p && consumeToken(b, ENDIF) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // STATIC?
  private static boolean IfStmt_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_0")) return false;
    consumeToken(b, STATIC);
    return true;
  }

  // THEN?
  private static boolean IfStmt_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_3")) return false;
    consumeToken(b, THEN);
    return true;
  }

  // (FuncBody|ElseIfStmt|ElseStmt)*
  private static boolean IfStmt_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_4")) return false;
    while (true) {
      int c = current_position_(b);
      if (!IfStmt_4_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "IfStmt_4", c)) break;
    }
    return true;
  }

  // FuncBody|ElseIfStmt|ElseStmt
  private static boolean IfStmt_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_4_0")) return false;
    boolean r;
    r = FuncBody(b, l + 1);
    if (!r) r = ElseIfStmt(b, l + 1);
    if (!r) r = ElseStmt(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // IMPLEMENT ID
  public static boolean ImplementDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ImplementDef")) return false;
    if (!nextTokenIs(b, IMPLEMENT)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, IMPLEMENT, ID);
    exit_section_(b, m, IMPLEMENT_DEF, r);
    return r;
  }

  /* ********************************************************** */
  // LOCAL? TypeName ARRAY? ID (EQ Expr)?
  public static boolean LVarStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LVarStmt")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, L_VAR_STMT, "<l var stmt>");
    r = LVarStmt_0(b, l + 1);
    r = r && TypeName(b, l + 1);
    r = r && LVarStmt_2(b, l + 1);
    r = r && consumeToken(b, ID);
    p = r; // pin = 4
    r = r && LVarStmt_4(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // LOCAL?
  private static boolean LVarStmt_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LVarStmt_0")) return false;
    consumeToken(b, LOCAL);
    return true;
  }

  // ARRAY?
  private static boolean LVarStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LVarStmt_2")) return false;
    consumeToken(b, ARRAY);
    return true;
  }

  // (EQ Expr)?
  private static boolean LVarStmt_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LVarStmt_4")) return false;
    LVarStmt_4_0(b, l + 1);
    return true;
  }

  // EQ Expr
  private static boolean LVarStmt_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LVarStmt_4_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // LIBRARY ID (INITIALIZER ID)? LibReq? (StructDef|ModuleDef|Fun|Glob|HookDef)* ENDLIBRARY
  public static boolean Lib(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lib")) return false;
    if (!nextTokenIs(b, LIBRARY)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LIB, null);
    r = consumeTokens(b, 1, LIBRARY, ID);
    p = r; // pin = 1
    r = r && report_error_(b, Lib_2(b, l + 1));
    r = p && report_error_(b, Lib_3(b, l + 1)) && r;
    r = p && report_error_(b, Lib_4(b, l + 1)) && r;
    r = p && consumeToken(b, ENDLIBRARY) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // (INITIALIZER ID)?
  private static boolean Lib_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lib_2")) return false;
    Lib_2_0(b, l + 1);
    return true;
  }

  // INITIALIZER ID
  private static boolean Lib_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lib_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, INITIALIZER, ID);
    exit_section_(b, m, null, r);
    return r;
  }

  // LibReq?
  private static boolean Lib_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lib_3")) return false;
    LibReq(b, l + 1);
    return true;
  }

  // (StructDef|ModuleDef|Fun|Glob|HookDef)*
  private static boolean Lib_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lib_4")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Lib_4_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Lib_4", c)) break;
    }
    return true;
  }

  // StructDef|ModuleDef|Fun|Glob|HookDef
  private static boolean Lib_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Lib_4_0")) return false;
    boolean r;
    r = StructDef(b, l + 1);
    if (!r) r = ModuleDef(b, l + 1);
    if (!r) r = Fun(b, l + 1);
    if (!r) r = Glob(b, l + 1);
    if (!r) r = HookDef(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // (REQUIRES|NEEDS|USES) LibReqItem (COMMA LibReqItem)*
  public static boolean LibReq(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibReq")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LIB_REQ, "<lib req>");
    r = LibReq_0(b, l + 1);
    p = r; // pin = 1
    r = r && report_error_(b, LibReqItem(b, l + 1));
    r = p && LibReq_2(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // REQUIRES|NEEDS|USES
  private static boolean LibReq_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LibReq_0")) return false;
    boolean r;
    r = consumeToken(b, REQUIRES);
    if (!r) r = consumeToken(b, NEEDS);
    if (!r) r = consumeToken(b, USES);
    return r;
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
  // LOOP Stmt* ENDLOOP
  public static boolean LoopStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LoopStmt")) return false;
    if (!nextTokenIs(b, LOOP)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LOOP_STMT, null);
    r = consumeToken(b, LOOP);
    p = r; // pin = 1
    r = r && report_error_(b, LoopStmt_1(b, l + 1));
    r = p && consumeToken(b, ENDLOOP) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Stmt*
  private static boolean LoopStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LoopStmt_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Stmt(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "LoopStmt_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // Vis? STATIC? METHOD ID FuncTakes? FuncReturns? Stmt* ENDMETHOD
  public static boolean MethodDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MethodDef")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, METHOD_DEF, "<method def>");
    r = MethodDef_0(b, l + 1);
    r = r && MethodDef_1(b, l + 1);
    r = r && consumeTokens(b, 1, METHOD, ID);
    p = r; // pin = 3
    r = r && report_error_(b, MethodDef_4(b, l + 1));
    r = p && report_error_(b, MethodDef_5(b, l + 1)) && r;
    r = p && report_error_(b, MethodDef_6(b, l + 1)) && r;
    r = p && consumeToken(b, ENDMETHOD) && r;
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

  // FuncTakes?
  private static boolean MethodDef_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MethodDef_4")) return false;
    FuncTakes(b, l + 1);
    return true;
  }

  // FuncReturns?
  private static boolean MethodDef_5(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MethodDef_5")) return false;
    FuncReturns(b, l + 1);
    return true;
  }

  // Stmt*
  private static boolean MethodDef_6(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MethodDef_6")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Stmt(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "MethodDef_6", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // Vis? MODULE ID MethodDef* ENDMODULE
  public static boolean ModuleDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ModuleDef")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, MODULE_DEF, "<module def>");
    r = ModuleDef_0(b, l + 1);
    r = r && consumeTokens(b, 1, MODULE, ID);
    p = r; // pin = 2
    r = r && report_error_(b, ModuleDef_3(b, l + 1));
    r = p && consumeToken(b, ENDMODULE) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Vis?
  private static boolean ModuleDef_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ModuleDef_0")) return false;
    Vis(b, l + 1);
    return true;
  }

  // MethodDef*
  private static boolean ModuleDef_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ModuleDef_3")) return false;
    while (true) {
      int c = current_position_(b);
      if (!MethodDef(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ModuleDef_3", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // CONSTANT? NATIVE FuncDefName FuncTakes? FuncReturns?
  public static boolean NativeDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "NativeDef")) return false;
    if (!nextTokenIs(b, "<native def>", CONSTANT, NATIVE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, NATIVE_DEF, "<native def>");
    r = NativeDef_0(b, l + 1);
    r = r && consumeToken(b, NATIVE);
    p = r; // pin = 2
    r = r && report_error_(b, FuncDefName(b, l + 1));
    r = p && report_error_(b, NativeDef_3(b, l + 1)) && r;
    r = p && NativeDef_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // CONSTANT?
  private static boolean NativeDef_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "NativeDef_0")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  // FuncTakes?
  private static boolean NativeDef_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "NativeDef_3")) return false;
    FuncTakes(b, l + 1);
    return true;
  }

  // FuncReturns?
  private static boolean NativeDef_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "NativeDef_4")) return false;
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
  // RETURN Expr?
  public static boolean ReturnStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ReturnStmt")) return false;
    if (!nextTokenIs(b, RETURN)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, RETURN_STMT, null);
    r = consumeToken(b, RETURN);
    p = r; // pin = 1
    r = r && ReturnStmt_1(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Expr?
  private static boolean ReturnStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ReturnStmt_1")) return false;
    Expr(b, l + 1, -1);
    return true;
  }

  /* ********************************************************** */
  // (
  //     TypeDef |
  //     NativeDef |
  //     Glob |
  //     Fun |
  //     Lib |
  //     HookDef |
  //     StructDef |
  //     ModuleDef
  //     )*
  static boolean Root(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root")) return false;
    Marker m = enter_section_(b, l, _NONE_);
    while (true) {
      int c = current_position_(b);
      if (!Root_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Root", c)) break;
    }
    exit_section_(b, l, m, true, false, VjassParser::rootRecover);
    return true;
  }

  // TypeDef |
  //     NativeDef |
  //     Glob |
  //     Fun |
  //     Lib |
  //     HookDef |
  //     StructDef |
  //     ModuleDef
  private static boolean Root_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root_0")) return false;
    boolean r;
    r = TypeDef(b, l + 1);
    if (!r) r = NativeDef(b, l + 1);
    if (!r) r = Glob(b, l + 1);
    if (!r) r = Fun(b, l + 1);
    if (!r) r = Lib(b, l + 1);
    if (!r) r = HookDef(b, l + 1);
    if (!r) r = StructDef(b, l + 1);
    if (!r) r = ModuleDef(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // CallSetStmt |
  //     LVarStmt |
  //     ReturnStmt |
  //     IfStmt |
  //     LoopStmt |
  //     ExitWhenStmt
  public static boolean Stmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Stmt")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, STMT, "<stmt>");
    r = CallSetStmt(b, l + 1);
    if (!r) r = LVarStmt(b, l + 1);
    if (!r) r = ReturnStmt(b, l + 1);
    if (!r) r = IfStmt(b, l + 1);
    if (!r) r = LoopStmt(b, l + 1);
    if (!r) r = ExitWhenStmt(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // Vis? STRUCT StructName (EXTENDS (ID|ARRAY))? (MethodDef|ImplementDef)* ENDSTRUCT
  public static boolean StructDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructDef")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, STRUCT_DEF, "<struct def>");
    r = StructDef_0(b, l + 1);
    r = r && consumeToken(b, STRUCT);
    p = r; // pin = 2
    r = r && report_error_(b, StructName(b, l + 1));
    r = p && report_error_(b, StructDef_3(b, l + 1)) && r;
    r = p && report_error_(b, StructDef_4(b, l + 1)) && r;
    r = p && consumeToken(b, ENDSTRUCT) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Vis?
  private static boolean StructDef_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructDef_0")) return false;
    Vis(b, l + 1);
    return true;
  }

  // (EXTENDS (ID|ARRAY))?
  private static boolean StructDef_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructDef_3")) return false;
    StructDef_3_0(b, l + 1);
    return true;
  }

  // EXTENDS (ID|ARRAY)
  private static boolean StructDef_3_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructDef_3_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EXTENDS);
    r = r && StructDef_3_0_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // ID|ARRAY
  private static boolean StructDef_3_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructDef_3_0_1")) return false;
    boolean r;
    r = consumeToken(b, ID);
    if (!r) r = consumeToken(b, ARRAY);
    return r;
  }

  // (MethodDef|ImplementDef)*
  private static boolean StructDef_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructDef_4")) return false;
    while (true) {
      int c = current_position_(b);
      if (!StructDef_4_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "StructDef_4", c)) break;
    }
    return true;
  }

  // MethodDef|ImplementDef
  private static boolean StructDef_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructDef_4_0")) return false;
    boolean r;
    r = MethodDef(b, l + 1);
    if (!r) r = ImplementDef(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // ID
  public static boolean StructName(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StructName")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    exit_section_(b, m, STRUCT_NAME, r);
    return r;
  }

  /* ********************************************************** */
  // TYPE TypeName EXTENDS TypeNameBase
  public static boolean TypeDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypeDef")) return false;
    if (!nextTokenIs(b, TYPE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, TYPE_DEF, null);
    r = consumeToken(b, TYPE);
    p = r; // pin = 1
    r = r && report_error_(b, TypeName(b, l + 1));
    r = p && report_error_(b, consumeToken(b, EXTENDS)) && r;
    r = p && TypeNameBase(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
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
  // TypeName
  public static boolean TypeNameBase(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypeNameBase")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, TYPE_NAME_BASE, "<type name base>");
    r = TypeName(b, l + 1);
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
    exit_section_(b, l, m, r, p, VjassParser::TypedVarListRecover);
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
  // !(RETURNS)
  static boolean TypedVarListRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypedVarListRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !consumeToken(b, RETURNS);
    exit_section_(b, l, m, r, false, null);
    return r;
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
  // !(TYPE|CONSTANT|GLOBALS|NATIVE|FUNCTION)
  static boolean rootRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "rootRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !rootRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // TYPE|CONSTANT|GLOBALS|NATIVE|FUNCTION
  private static boolean rootRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "rootRecover_0")) return false;
    boolean r;
    r = consumeToken(b, TYPE);
    if (!r) r = consumeToken(b, CONSTANT);
    if (!r) r = consumeToken(b, GLOBALS);
    if (!r) r = consumeToken(b, NATIVE);
    if (!r) r = consumeToken(b, FUNCTION);
    return r;
  }

  /* ********************************************************** */
  // Expression root: Expr
  // Operator priority table:
  // 0: BINARY(DotExpr)
  // 1: BINARY(PlusExpr) BINARY(MinusExpr)
  // 2: BINARY(MulExpr) BINARY(DivExpr)
  // 3: PREFIX(MulUnaryExpr) PREFIX(DivUnaryExpr) PREFIX(PlusUnaryExpr) PREFIX(MinusUnaryExpr)
  //    PREFIX(NotExpr)
  // 4: BINARY(EqExpr) BINARY(NeqExpr) BINARY(LtExpr) BINARY(LtEqExpr)
  //    BINARY(GtExpr) BINARY(GtEqExpr)
  // 5: BINARY(OrExpr)
  // 6: BINARY(AndExpr)
  // 7: ATOM(PrimaryExpr)
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
      if (g < 0 && consumeTokenSmart(b, DOT)) {
        r = Expr(b, l, 0);
        exit_section_(b, l, m, DOT_EXPR, r, true, null);
      }
      else if (g < 1 && consumeTokenSmart(b, PLUS)) {
        r = Expr(b, l, 1);
        exit_section_(b, l, m, PLUS_EXPR, r, true, null);
      }
      else if (g < 1 && consumeTokenSmart(b, MINUS)) {
        r = Expr(b, l, 1);
        exit_section_(b, l, m, MINUS_EXPR, r, true, null);
      }
      else if (g < 2 && consumeTokenSmart(b, MUL)) {
        r = Expr(b, l, 2);
        exit_section_(b, l, m, MUL_EXPR, r, true, null);
      }
      else if (g < 2 && consumeTokenSmart(b, DIV)) {
        r = Expr(b, l, 2);
        exit_section_(b, l, m, DIV_EXPR, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, EQ_EQ)) {
        r = Expr(b, l, 4);
        exit_section_(b, l, m, EQ_EXPR, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, NEQ)) {
        r = Expr(b, l, 4);
        exit_section_(b, l, m, NEQ_EXPR, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, LT)) {
        r = Expr(b, l, 4);
        exit_section_(b, l, m, LT_EXPR, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, LT_EQ)) {
        r = Expr(b, l, 4);
        exit_section_(b, l, m, LT_EQ_EXPR, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, GT)) {
        r = Expr(b, l, 4);
        exit_section_(b, l, m, GT_EXPR, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, GT_EQ)) {
        r = Expr(b, l, 4);
        exit_section_(b, l, m, GT_EQ_EXPR, r, true, null);
      }
      else if (g < 5 && consumeTokenSmart(b, OR)) {
        r = Expr(b, l, 5);
        exit_section_(b, l, m, OR_EXPR, r, true, null);
      }
      else if (g < 6 && consumeTokenSmart(b, AND)) {
        r = Expr(b, l, 6);
        exit_section_(b, l, m, AND_EXPR, r, true, null);
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
    r = p && Expr(b, l, 3);
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
    r = p && Expr(b, l, 3);
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
    r = p && Expr(b, l, 3);
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
    r = p && Expr(b, l, 3);
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
    r = p && Expr(b, l, 3);
    exit_section_(b, l, m, NOT_EXPR, r, p, null);
    return r || p;
  }

  // FALSE |
  //     NULL |
  //     TRUE |
  //     REALVAL |
  //     HEXVAL |
  //     INTVAL |
  //     RAWVAL |
  //     STRVAL |
  //     ParenExpr |
  //     FuncCall |
  //     ArrayAccess |
  //     FuncAsCode |
  //     ID
  public static boolean PrimaryExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "PrimaryExpr")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _COLLAPSE_, PRIMARY_EXPR, "<primary expr>");
    r = consumeTokenSmart(b, FALSE);
    if (!r) r = consumeTokenSmart(b, NULL);
    if (!r) r = consumeTokenSmart(b, TRUE);
    if (!r) r = consumeTokenSmart(b, REALVAL);
    if (!r) r = consumeTokenSmart(b, HEXVAL);
    if (!r) r = consumeTokenSmart(b, INTVAL);
    if (!r) r = consumeTokenSmart(b, RAWVAL);
    if (!r) r = consumeTokenSmart(b, STRVAL);
    if (!r) r = ParenExpr(b, l + 1);
    if (!r) r = FuncCall(b, l + 1);
    if (!r) r = ArrayAccess(b, l + 1);
    if (!r) r = FuncAsCode(b, l + 1);
    if (!r) r = consumeTokenSmart(b, ID);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

}
