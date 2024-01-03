// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.parser;

import com.intellij.lang.PsiBuilder;
import com.intellij.lang.PsiBuilder.Marker;
import static guru.xgm.jass.psi.JassTypes.*;
import static com.intellij.lang.parser.GeneratedParserUtilBase.*;
import com.intellij.psi.tree.IElementType;
import com.intellij.lang.ASTNode;
import com.intellij.psi.tree.TokenSet;
import com.intellij.lang.PsiParser;
import com.intellij.lang.LightPsiParser;

@SuppressWarnings({"SimplifiableIfStatement", "UnusedAssignment"})
public class JassParser implements PsiParser, LightPsiParser {

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
    create_token_set_(AND_EXPR, DIV_EXPR, DIV_UNARY_EXPR, EQ_EXPR,
      EXPR, GT_EQ_EXPR, GT_EXPR, LT_EQ_EXPR,
      LT_EXPR, MINUS_EXPR, MINUS_UNARY_EXPR, MUL_EXPR,
      MUL_UNARY_EXPR, NEQ_EXPR, NOT_EXPR, OR_EXPR,
      PAREN_EXPR, PLUS_EXPR, PLUS_UNARY_EXPR, PRIMARY_EXPR),
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
  // ID LBRACK Expr? RBRACK
  public static boolean ArrayAccess(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArrayAccess")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, ID, LBRACK);
    r = r && ArrayAccess_2(b, l + 1);
    r = r && consumeToken(b, RBRACK);
    exit_section_(b, m, ARRAY_ACCESS, r);
    return r;
  }

  // Expr?
  private static boolean ArrayAccess_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArrayAccess_2")) return false;
    Expr(b, l + 1, -1);
    return true;
  }

  /* ********************************************************** */
  // DEBUG? CALL? FuncCall
  public static boolean CallStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, CALL_STMT, "<call stmt>");
    r = CallStmt_0(b, l + 1);
    r = r && CallStmt_1(b, l + 1);
    r = r && FuncCall(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // DEBUG?
  private static boolean CallStmt_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt_0")) return false;
    consumeToken(b, DEBUG);
    return true;
  }

  // CALL?
  private static boolean CallStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt_1")) return false;
    consumeToken(b, CALL);
    return true;
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
  // CONSTANT? FUNCTION FuncDefName FuncTakes? FuncReturns? Stmt* ENDFUNCTION
  public static boolean FuncDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef")) return false;
    if (!nextTokenIs(b, "<func def>", CONSTANT, FUNCTION)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNC_DEF, "<func def>");
    r = FuncDef_0(b, l + 1);
    r = r && consumeToken(b, FUNCTION);
    p = r; // pin = 2
    r = r && report_error_(b, FuncDefName(b, l + 1));
    r = p && report_error_(b, FuncDef_3(b, l + 1)) && r;
    r = p && report_error_(b, FuncDef_4(b, l + 1)) && r;
    r = p && report_error_(b, FuncDef_5(b, l + 1)) && r;
    r = p && consumeToken(b, ENDFUNCTION) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // CONSTANT?
  private static boolean FuncDef_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef_0")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  // FuncTakes?
  private static boolean FuncDef_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef_3")) return false;
    FuncTakes(b, l + 1);
    return true;
  }

  // FuncReturns?
  private static boolean FuncDef_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef_4")) return false;
    FuncReturns(b, l + 1);
    return true;
  }

  // Stmt*
  private static boolean FuncDef_5(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FuncDef_5")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Stmt(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "FuncDef_5", c)) break;
    }
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
  public static boolean GlobalsDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GlobalsDef")) return false;
    if (!nextTokenIs(b, GLOBALS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, GLOBALS_DEF, null);
    r = consumeToken(b, GLOBALS);
    p = r; // pin = 1
    r = r && report_error_(b, GlobalsDef_1(b, l + 1));
    r = p && consumeToken(b, ENDGLOBALS) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // GvarDef*
  private static boolean GlobalsDef_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GlobalsDef_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!GvarDef(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "GlobalsDef_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // CONSTANT? TypeName ARRAY? GvarName (EQ Expr)?
  public static boolean GvarDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDef")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, GVAR_DEF, "<gvar def>");
    r = GvarDef_0(b, l + 1);
    r = r && TypeName(b, l + 1);
    p = r; // pin = 2
    r = r && report_error_(b, GvarDef_2(b, l + 1));
    r = p && report_error_(b, GvarName(b, l + 1)) && r;
    r = p && GvarDef_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, JassParser::GvarDefRecover);
    return r || p;
  }

  // CONSTANT?
  private static boolean GvarDef_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDef_0")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  // ARRAY?
  private static boolean GvarDef_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDef_2")) return false;
    consumeToken(b, ARRAY);
    return true;
  }

  // (EQ Expr)?
  private static boolean GvarDef_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDef_4")) return false;
    GvarDef_4_0(b, l + 1);
    return true;
  }

  // EQ Expr
  private static boolean GvarDef_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDef_4_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // !(CONSTANT|GLOBALS|ENDGLOBALS|TypeName)
  static boolean GvarDefRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDefRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !GvarDefRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // CONSTANT|GLOBALS|ENDGLOBALS|TypeName
  private static boolean GvarDefRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarDefRecover_0")) return false;
    boolean r;
    r = consumeToken(b, CONSTANT);
    if (!r) r = consumeToken(b, GLOBALS);
    if (!r) r = consumeToken(b, ENDGLOBALS);
    if (!r) r = TypeName(b, l + 1);
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
  // IF Expr THEN? (Stmt|ElseIfStmt|ElseStmt)* ENDIF
  public static boolean IfStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt")) return false;
    if (!nextTokenIs(b, IF)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, IF_STMT, null);
    r = consumeToken(b, IF);
    p = r; // pin = 1
    r = r && report_error_(b, Expr(b, l + 1, -1));
    r = p && report_error_(b, IfStmt_2(b, l + 1)) && r;
    r = p && report_error_(b, IfStmt_3(b, l + 1)) && r;
    r = p && consumeToken(b, ENDIF) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // THEN?
  private static boolean IfStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_2")) return false;
    consumeToken(b, THEN);
    return true;
  }

  // (Stmt|ElseIfStmt|ElseStmt)*
  private static boolean IfStmt_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_3")) return false;
    while (true) {
      int c = current_position_(b);
      if (!IfStmt_3_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "IfStmt_3", c)) break;
    }
    return true;
  }

  // Stmt|ElseIfStmt|ElseStmt
  private static boolean IfStmt_3_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_3_0")) return false;
    boolean r;
    r = Stmt(b, l + 1);
    if (!r) r = ElseIfStmt(b, l + 1);
    if (!r) r = ElseStmt(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // LOCAL? TypeName ARRAY? ID (EQ Expr)?
  public static boolean LocalVarStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LocalVarStmt")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LOCAL_VAR_STMT, "<local var stmt>");
    r = LocalVarStmt_0(b, l + 1);
    r = r && TypeName(b, l + 1);
    p = r; // pin = 2
    r = r && report_error_(b, LocalVarStmt_2(b, l + 1));
    r = p && report_error_(b, consumeToken(b, ID)) && r;
    r = p && LocalVarStmt_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // LOCAL?
  private static boolean LocalVarStmt_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LocalVarStmt_0")) return false;
    consumeToken(b, LOCAL);
    return true;
  }

  // ARRAY?
  private static boolean LocalVarStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LocalVarStmt_2")) return false;
    consumeToken(b, ARRAY);
    return true;
  }

  // (EQ Expr)?
  private static boolean LocalVarStmt_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LocalVarStmt_4")) return false;
    LocalVarStmt_4_0(b, l + 1);
    return true;
  }

  // EQ Expr
  private static boolean LocalVarStmt_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LocalVarStmt_4_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
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
  //     GlobalsDef |
  //     FuncDef
  //     )*
  static boolean Root(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root")) return false;
    Marker m = enter_section_(b, l, _NONE_);
    while (true) {
      int c = current_position_(b);
      if (!Root_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Root", c)) break;
    }
    exit_section_(b, l, m, true, false, JassParser::rootRecover);
    return true;
  }

  // TypeDef |
  //     NativeDef |
  //     GlobalsDef |
  //     FuncDef
  private static boolean Root_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root_0")) return false;
    boolean r;
    r = TypeDef(b, l + 1);
    if (!r) r = NativeDef(b, l + 1);
    if (!r) r = GlobalsDef(b, l + 1);
    if (!r) r = FuncDef(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // SET? (ArrayAccess|ID) EQ Expr
  public static boolean SetStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SetStmt")) return false;
    if (!nextTokenIs(b, "<set stmt>", ID, SET)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, SET_STMT, "<set stmt>");
    r = SetStmt_0(b, l + 1);
    r = r && SetStmt_1(b, l + 1);
    r = r && consumeToken(b, EQ);
    p = r; // pin = 3
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // SET?
  private static boolean SetStmt_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SetStmt_0")) return false;
    consumeToken(b, SET);
    return true;
  }

  // ArrayAccess|ID
  private static boolean SetStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SetStmt_1")) return false;
    boolean r;
    r = ArrayAccess(b, l + 1);
    if (!r) r = consumeToken(b, ID);
    return r;
  }

  /* ********************************************************** */
  // SetStmt |
  //     CallStmt |
  //     LocalVarStmt |
  //     ReturnStmt |
  //     IfStmt |
  //     LoopStmt |
  //     ExitWhenStmt
  public static boolean Stmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Stmt")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, STMT, "<stmt>");
    r = SetStmt(b, l + 1);
    if (!r) r = CallStmt(b, l + 1);
    if (!r) r = LocalVarStmt(b, l + 1);
    if (!r) r = ReturnStmt(b, l + 1);
    if (!r) r = IfStmt(b, l + 1);
    if (!r) r = LoopStmt(b, l + 1);
    if (!r) r = ExitWhenStmt(b, l + 1);
    exit_section_(b, l, m, r, false, null);
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
  // ID|HANDLE|INTEGER|REAL|BOOLEAN|STRING|CODE
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
    exit_section_(b, l, m, r, p, JassParser::TypedVarListRecover);
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
  // 0: BINARY(PlusExpr) BINARY(MinusExpr)
  // 1: BINARY(MulExpr) BINARY(DivExpr)
  // 2: PREFIX(MulUnaryExpr) PREFIX(DivUnaryExpr) PREFIX(PlusUnaryExpr) PREFIX(MinusUnaryExpr)
  //    PREFIX(NotExpr)
  // 3: BINARY(EqExpr) BINARY(NeqExpr) BINARY(LtExpr) BINARY(LtEqExpr)
  //    BINARY(GtExpr) BINARY(GtEqExpr)
  // 4: BINARY(OrExpr)
  // 5: BINARY(AndExpr)
  // 6: ATOM(PrimaryExpr)
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
        exit_section_(b, l, m, NEQ_EXPR, r, true, null);
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
      else if (g < 4 && consumeTokenSmart(b, OR)) {
        r = Expr(b, l, 4);
        exit_section_(b, l, m, OR_EXPR, r, true, null);
      }
      else if (g < 5 && consumeTokenSmart(b, AND)) {
        r = Expr(b, l, 5);
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
