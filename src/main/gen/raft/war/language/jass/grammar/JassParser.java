// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.grammar;

import com.intellij.lang.PsiBuilder;
import com.intellij.lang.PsiBuilder.Marker;
import static raft.war.language.jass.psi.JassTypes.*;
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
    create_token_set_(AND_EXPR, DIV_EXPR, DIV_UN_EXPR, EQ_EXPR,
      EXPR, GT_EQ_EXPR, GT_EXPR, LT_EQ_EXPR,
      LT_EXPR, MINUS_EXPR, MINUS_UN_EXPR, MUL_EXPR,
      MUL_UN_EXPR, NEQ_EXPR, NOT_EXPR, OR_EXPR,
      PAREN_EXPR, PLUS_EXPR, PLUS_UN_EXPR, PRIM_EXPR),
  };

  /* ********************************************************** */
  // Expr (COMMA Expr)*
  public static boolean ArgList(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, ARG_LIST, "<arg list>");
    r = Expr(b, l + 1, -1);
    r = r && ArgList_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // (COMMA Expr)*
  private static boolean ArgList_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!ArgList_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ArgList_1", c)) break;
    }
    return true;
  }

  // COMMA Expr
  private static boolean ArgList_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArgList_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && Expr(b, l + 1, -1);
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
  // DEBUG? ((CALL? FunCall)|(CALL FunCall?))
  public static boolean CallStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, CALL_STMT, "<call stmt>");
    r = CallStmt_0(b, l + 1);
    r = r && CallStmt_1(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // DEBUG?
  private static boolean CallStmt_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt_0")) return false;
    consumeToken(b, DEBUG);
    return true;
  }

  // (CALL? FunCall)|(CALL FunCall?)
  private static boolean CallStmt_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = CallStmt_1_0(b, l + 1);
    if (!r) r = CallStmt_1_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // CALL? FunCall
  private static boolean CallStmt_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = CallStmt_1_0_0(b, l + 1);
    r = r && FunCall(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // CALL?
  private static boolean CallStmt_1_0_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt_1_0_0")) return false;
    consumeToken(b, CALL);
    return true;
  }

  // CALL FunCall?
  private static boolean CallStmt_1_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt_1_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, CALL);
    r = r && CallStmt_1_1_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // FunCall?
  private static boolean CallStmt_1_1_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStmt_1_1_1")) return false;
    FunCall(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // ELSEIF Expr THEN? FunBody
  public static boolean ElseIfStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseIfStmt")) return false;
    if (!nextTokenIs(b, ELSEIF)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, ELSE_IF_STMT, null);
    r = consumeToken(b, ELSEIF);
    p = r; // pin = 1
    r = r && report_error_(b, Expr(b, l + 1, -1));
    r = p && report_error_(b, ElseIfStmt_2(b, l + 1)) && r;
    r = p && FunBody(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // THEN?
  private static boolean ElseIfStmt_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseIfStmt_2")) return false;
    consumeToken(b, THEN);
    return true;
  }

  /* ********************************************************** */
  // ELSE FunBody
  public static boolean ElseStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseStmt")) return false;
    if (!nextTokenIs(b, ELSE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, ELSE_STMT, null);
    r = consumeToken(b, ELSE);
    p = r; // pin = 1
    r = r && FunBody(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
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
  // FunHead FunBody ENDFUNCTION
  public static boolean Fun(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Fun")) return false;
    if (!nextTokenIs(b, "<fun>", CONSTANT, FUNCTION)) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, FUN, "<fun>");
    r = FunHead(b, l + 1);
    r = r && FunBody(b, l + 1);
    r = r && consumeToken(b, ENDFUNCTION);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // Stmt*
  public static boolean FunBody(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunBody")) return false;
    Marker m = enter_section_(b, l, _NONE_, FUN_BODY, "<fun body>");
    while (true) {
      int c = current_position_(b);
      if (!Stmt(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "FunBody", c)) break;
    }
    exit_section_(b, l, m, true, false, JassParser::FunBodyRecover);
    return true;
  }

  /* ********************************************************** */
  // !(ENDFUNCTION|LOOP|ENDLOOP|ELSE|ELSEIF|ENDIF)
  static boolean FunBodyRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunBodyRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !FunBodyRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // ENDFUNCTION|LOOP|ENDLOOP|ELSE|ELSEIF|ENDIF
  private static boolean FunBodyRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunBodyRecover_0")) return false;
    boolean r;
    r = consumeToken(b, ENDFUNCTION);
    if (!r) r = consumeToken(b, LOOP);
    if (!r) r = consumeToken(b, ENDLOOP);
    if (!r) r = consumeToken(b, ELSE);
    if (!r) r = consumeToken(b, ELSEIF);
    if (!r) r = consumeToken(b, ENDIF);
    return r;
  }

  /* ********************************************************** */
  // FunName LPAREN ArgList? RPAREN
  public static boolean FunCall(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunCall")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUN_CALL, null);
    r = FunName(b, l + 1);
    r = r && consumeToken(b, LPAREN);
    p = r; // pin = 2
    r = r && report_error_(b, FunCall_2(b, l + 1));
    r = p && consumeToken(b, RPAREN) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // ArgList?
  private static boolean FunCall_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunCall_2")) return false;
    ArgList(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // CONSTANT? FUNCTION FunName? FunTake? FunRet?
  public static boolean FunHead(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunHead")) return false;
    if (!nextTokenIs(b, "<fun head>", CONSTANT, FUNCTION)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUN_HEAD, "<fun head>");
    r = FunHead_0(b, l + 1);
    r = r && consumeToken(b, FUNCTION);
    p = r; // pin = 2
    r = r && report_error_(b, FunHead_2(b, l + 1));
    r = p && report_error_(b, FunHead_3(b, l + 1)) && r;
    r = p && FunHead_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // CONSTANT?
  private static boolean FunHead_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunHead_0")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  // FunName?
  private static boolean FunHead_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunHead_2")) return false;
    FunName(b, l + 1);
    return true;
  }

  // FunTake?
  private static boolean FunHead_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunHead_3")) return false;
    FunTake(b, l + 1);
    return true;
  }

  // FunRet?
  private static boolean FunHead_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunHead_4")) return false;
    FunRet(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // ID
  public static boolean FunName(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunName")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    exit_section_(b, m, FUN_NAME, r);
    return r;
  }

  /* ********************************************************** */
  // FUNCTION FunName
  public static boolean FunRef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunRef")) return false;
    if (!nextTokenIs(b, FUNCTION)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUN_REF, null);
    r = consumeToken(b, FUNCTION);
    p = r; // pin = 1
    r = r && FunName(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // RETURNS (NOTHING|TypeName)
  public static boolean FunRet(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunRet")) return false;
    if (!nextTokenIs(b, RETURNS)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, RETURNS);
    r = r && FunRet_1(b, l + 1);
    exit_section_(b, m, FUN_RET, r);
    return r;
  }

  // NOTHING|TypeName
  private static boolean FunRet_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunRet_1")) return false;
    boolean r;
    r = consumeToken(b, NOTHING);
    if (!r) r = TypeName(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // TAKES (NOTHING|ParamList)
  public static boolean FunTake(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunTake")) return false;
    if (!nextTokenIs(b, TAKES)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, TAKES);
    r = r && FunTake_1(b, l + 1);
    exit_section_(b, m, FUN_TAKE, r);
    return r;
  }

  // NOTHING|ParamList
  private static boolean FunTake_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunTake_1")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, NOTHING);
    if (!r) r = ParamList(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // GLOBALS Gvar* ENDGLOBALS
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

  // Gvar*
  private static boolean Glob_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Glob_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Gvar(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Glob_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // CONSTANT? VarDef
  public static boolean Gvar(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Gvar")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, GVAR, "<gvar>");
    r = Gvar_0(b, l + 1);
    r = r && VarDef(b, l + 1);
    exit_section_(b, l, m, r, false, JassParser::GvarRecover);
    return r;
  }

  // CONSTANT?
  private static boolean Gvar_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Gvar_0")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  /* ********************************************************** */
  // !(CONSTANT|GLOBALS|ENDGLOBALS|FUNCTION|TypeName)
  static boolean GvarRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !GvarRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // CONSTANT|GLOBALS|ENDGLOBALS|FUNCTION|TypeName
  private static boolean GvarRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GvarRecover_0")) return false;
    boolean r;
    r = consumeToken(b, CONSTANT);
    if (!r) r = consumeToken(b, GLOBALS);
    if (!r) r = consumeToken(b, ENDGLOBALS);
    if (!r) r = consumeToken(b, FUNCTION);
    if (!r) r = TypeName(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // IF Expr THEN? FunBody (ElseIfStmt|ElseStmt)* ENDIF
  public static boolean IfStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt")) return false;
    if (!nextTokenIs(b, IF)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, IF_STMT, null);
    r = consumeToken(b, IF);
    p = r; // pin = 1
    r = r && report_error_(b, Expr(b, l + 1, -1));
    r = p && report_error_(b, IfStmt_2(b, l + 1)) && r;
    r = p && report_error_(b, FunBody(b, l + 1)) && r;
    r = p && report_error_(b, IfStmt_4(b, l + 1)) && r;
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

  // (ElseIfStmt|ElseStmt)*
  private static boolean IfStmt_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_4")) return false;
    while (true) {
      int c = current_position_(b);
      if (!IfStmt_4_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "IfStmt_4", c)) break;
    }
    return true;
  }

  // ElseIfStmt|ElseStmt
  private static boolean IfStmt_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStmt_4_0")) return false;
    boolean r;
    r = ElseIfStmt(b, l + 1);
    if (!r) r = ElseStmt(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // LOOP FunBody ENDLOOP
  public static boolean LoopStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LoopStmt")) return false;
    if (!nextTokenIs(b, LOOP)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LOOP_STMT, null);
    r = consumeToken(b, LOOP);
    p = r; // pin = 1
    r = r && report_error_(b, FunBody(b, l + 1));
    r = p && consumeToken(b, ENDLOOP) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // LOCAL? VarDef
  public static boolean LvarStmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LvarStmt")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, LVAR_STMT, "<lvar stmt>");
    r = LvarStmt_0(b, l + 1);
    r = r && VarDef(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // LOCAL?
  private static boolean LvarStmt_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LvarStmt_0")) return false;
    consumeToken(b, LOCAL);
    return true;
  }

  /* ********************************************************** */
  // CONSTANT? NATIVE FunName? FunTake? FunRet?
  public static boolean Nativ(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Nativ")) return false;
    if (!nextTokenIs(b, "<nativ>", CONSTANT, NATIVE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, NATIV, "<nativ>");
    r = Nativ_0(b, l + 1);
    r = r && consumeToken(b, NATIVE);
    p = r; // pin = 2
    r = r && report_error_(b, Nativ_2(b, l + 1));
    r = p && report_error_(b, Nativ_3(b, l + 1)) && r;
    r = p && Nativ_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // CONSTANT?
  private static boolean Nativ_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Nativ_0")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  // FunName?
  private static boolean Nativ_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Nativ_2")) return false;
    FunName(b, l + 1);
    return true;
  }

  // FunTake?
  private static boolean Nativ_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Nativ_3")) return false;
    FunTake(b, l + 1);
    return true;
  }

  // FunRet?
  private static boolean Nativ_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Nativ_4")) return false;
    FunRet(b, l + 1);
    return true;
  }

  /* ********************************************************** */
  // INTVAL | REALVAL | HEXVAL | RAWVAL
  public static boolean Num(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Num")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, NUM, "<num>");
    r = consumeToken(b, INTVAL);
    if (!r) r = consumeToken(b, REALVAL);
    if (!r) r = consumeToken(b, HEXVAL);
    if (!r) r = consumeToken(b, RAWVAL);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // TypeName ID
  public static boolean Param(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Param")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, PARAM, "<param>");
    r = TypeName(b, l + 1);
    r = r && consumeToken(b, ID);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // Param (COMMA Param)*
  public static boolean ParamList(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamList")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, PARAM_LIST, "<param list>");
    r = Param(b, l + 1);
    p = r; // pin = 1
    r = r && ParamList_1(b, l + 1);
    exit_section_(b, l, m, r, p, JassParser::ParamListRecover);
    return r || p;
  }

  // (COMMA Param)*
  private static boolean ParamList_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamList_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!ParamList_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ParamList_1", c)) break;
    }
    return true;
  }

  // COMMA Param
  private static boolean ParamList_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamList_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && Param(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // !(RETURNS)
  static boolean ParamListRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamListRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !consumeToken(b, RETURNS);
    exit_section_(b, l, m, r, false, null);
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
  //     Nativ |
  //     Glob |
  //     Fun
  //     )*
  static boolean Root(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root")) return false;
    Marker m = enter_section_(b, l, _NONE_);
    while (true) {
      int c = current_position_(b);
      if (!Root_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Root", c)) break;
    }
    exit_section_(b, l, m, true, false, JassParser::RootRecover);
    return true;
  }

  // TypeDef |
  //     Nativ |
  //     Glob |
  //     Fun
  private static boolean Root_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root_0")) return false;
    boolean r;
    r = TypeDef(b, l + 1);
    if (!r) r = Nativ(b, l + 1);
    if (!r) r = Glob(b, l + 1);
    if (!r) r = Fun(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // !(TYPE|GLOBALS|NATIVE|FUNCTION)
  static boolean RootRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "RootRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !RootRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // TYPE|GLOBALS|NATIVE|FUNCTION
  private static boolean RootRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "RootRecover_0")) return false;
    boolean r;
    r = consumeToken(b, TYPE);
    if (!r) r = consumeToken(b, GLOBALS);
    if (!r) r = consumeToken(b, NATIVE);
    if (!r) r = consumeToken(b, FUNCTION);
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
  // SetStmt
  //     | CallStmt
  //     | LvarStmt
  //     | ReturnStmt
  //     | IfStmt
  //     | LoopStmt
  //     | ExitWhenStmt
  public static boolean Stmt(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Stmt")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, STMT, "<stmt>");
    r = SetStmt(b, l + 1);
    if (!r) r = CallStmt(b, l + 1);
    if (!r) r = LvarStmt(b, l + 1);
    if (!r) r = ReturnStmt(b, l + 1);
    if (!r) r = IfStmt(b, l + 1);
    if (!r) r = LoopStmt(b, l + 1);
    if (!r) r = ExitWhenStmt(b, l + 1);
    exit_section_(b, l, m, r, false, JassParser::StmtRecover);
    return r;
  }

  /* ********************************************************** */
  // !(ID|
  //     FUNCTION|ENDFUNCTION|RETURN|
  //     SET|CALL|LOCAL|
  //     LOOP|ENDLOOP|EXITWHEN|
  //     IF|ELSEIF|ENDIF|ELSE)
  static boolean StmtRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StmtRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !StmtRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // ID|
  //     FUNCTION|ENDFUNCTION|RETURN|
  //     SET|CALL|LOCAL|
  //     LOOP|ENDLOOP|EXITWHEN|
  //     IF|ELSEIF|ENDIF|ELSE
  private static boolean StmtRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StmtRecover_0")) return false;
    boolean r;
    r = consumeToken(b, ID);
    if (!r) r = consumeToken(b, FUNCTION);
    if (!r) r = consumeToken(b, ENDFUNCTION);
    if (!r) r = consumeToken(b, RETURN);
    if (!r) r = consumeToken(b, SET);
    if (!r) r = consumeToken(b, CALL);
    if (!r) r = consumeToken(b, LOCAL);
    if (!r) r = consumeToken(b, LOOP);
    if (!r) r = consumeToken(b, ENDLOOP);
    if (!r) r = consumeToken(b, EXITWHEN);
    if (!r) r = consumeToken(b, IF);
    if (!r) r = consumeToken(b, ELSEIF);
    if (!r) r = consumeToken(b, ENDIF);
    if (!r) r = consumeToken(b, ELSE);
    return r;
  }

  /* ********************************************************** */
  // STRVAL
  public static boolean Str(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Str")) return false;
    if (!nextTokenIs(b, STRVAL)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, STRVAL);
    exit_section_(b, m, STR, r);
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
  // HANDLE|INTEGER|REAL|BOOLEAN|STRING|CODE|ID
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
    if (!r) r = consumeToken(b, ID);
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
  // TypeName ARRAY? ID (EQ Expr)?
  public static boolean VarDef(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarDef")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, VAR_DEF, "<var def>");
    r = TypeName(b, l + 1);
    r = r && VarDef_1(b, l + 1);
    r = r && consumeToken(b, ID);
    p = r; // pin = 3
    r = r && VarDef_3(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // ARRAY?
  private static boolean VarDef_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarDef_1")) return false;
    consumeToken(b, ARRAY);
    return true;
  }

  // (EQ Expr)?
  private static boolean VarDef_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarDef_3")) return false;
    VarDef_3_0(b, l + 1);
    return true;
  }

  // EQ Expr
  private static boolean VarDef_3_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "VarDef_3_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Expr(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // Expression root: Expr
  // Operator priority table:
  // 0: BINARY(PlusExpr)
  // 1: BINARY(MinusExpr)
  // 2: BINARY(MulExpr)
  // 3: BINARY(DivExpr)
  // 4: PREFIX(MulUnExpr)
  // 5: PREFIX(DivUnExpr)
  // 6: PREFIX(PlusUnExpr)
  // 7: PREFIX(MinusUnExpr)
  // 8: PREFIX(NotExpr)
  // 9: BINARY(EqExpr)
  // 10: BINARY(NeqExpr)
  // 11: BINARY(LtExpr)
  // 12: BINARY(LtEqExpr)
  // 13: BINARY(GtExpr)
  // 14: BINARY(GtEqExpr)
  // 15: BINARY(OrExpr)
  // 16: BINARY(AndExpr)
  // 17: ATOM(PrimExpr)
  public static boolean Expr(PsiBuilder b, int l, int g) {
    if (!recursion_guard_(b, l, "Expr")) return false;
    addVariant(b, "<expr>");
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, "<expr>");
    r = PlusUnExpr(b, l + 1);
    if (!r) r = MinusUnExpr(b, l + 1);
    if (!r) r = MulUnExpr(b, l + 1);
    if (!r) r = DivUnExpr(b, l + 1);
    if (!r) r = NotExpr(b, l + 1);
    if (!r) r = PrimExpr(b, l + 1);
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
      else if (g < 1 && consumeTokenSmart(b, MINUS)) {
        r = Expr(b, l, 1);
        exit_section_(b, l, m, MINUS_EXPR, r, true, null);
      }
      else if (g < 2 && consumeTokenSmart(b, MUL)) {
        r = Expr(b, l, 2);
        exit_section_(b, l, m, MUL_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, DIV)) {
        r = Expr(b, l, 3);
        exit_section_(b, l, m, DIV_EXPR, r, true, null);
      }
      else if (g < 9 && consumeTokenSmart(b, EQ_EQ)) {
        r = Expr(b, l, 9);
        exit_section_(b, l, m, EQ_EXPR, r, true, null);
      }
      else if (g < 10 && consumeTokenSmart(b, NEQ)) {
        r = Expr(b, l, 10);
        exit_section_(b, l, m, NEQ_EXPR, r, true, null);
      }
      else if (g < 11 && consumeTokenSmart(b, LT)) {
        r = Expr(b, l, 11);
        exit_section_(b, l, m, LT_EXPR, r, true, null);
      }
      else if (g < 12 && consumeTokenSmart(b, LT_EQ)) {
        r = Expr(b, l, 12);
        exit_section_(b, l, m, LT_EQ_EXPR, r, true, null);
      }
      else if (g < 13 && consumeTokenSmart(b, GT)) {
        r = Expr(b, l, 13);
        exit_section_(b, l, m, GT_EXPR, r, true, null);
      }
      else if (g < 14 && consumeTokenSmart(b, GT_EQ)) {
        r = Expr(b, l, 14);
        exit_section_(b, l, m, GT_EQ_EXPR, r, true, null);
      }
      else if (g < 15 && consumeTokenSmart(b, OR)) {
        r = Expr(b, l, 15);
        exit_section_(b, l, m, OR_EXPR, r, true, null);
      }
      else if (g < 16 && consumeTokenSmart(b, AND)) {
        r = Expr(b, l, 16);
        exit_section_(b, l, m, AND_EXPR, r, true, null);
      }
      else {
        exit_section_(b, l, m, null, false, false, null);
        break;
      }
    }
    return r;
  }

  public static boolean PlusUnExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "PlusUnExpr")) return false;
    if (!nextTokenIsSmart(b, PLUS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, PLUS);
    p = r;
    r = p && Expr(b, l, 6);
    exit_section_(b, l, m, PLUS_UN_EXPR, r, p, null);
    return r || p;
  }

  public static boolean MinusUnExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MinusUnExpr")) return false;
    if (!nextTokenIsSmart(b, MINUS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, MINUS);
    p = r;
    r = p && Expr(b, l, 7);
    exit_section_(b, l, m, MINUS_UN_EXPR, r, p, null);
    return r || p;
  }

  public static boolean MulUnExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "MulUnExpr")) return false;
    if (!nextTokenIsSmart(b, MUL)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, MUL);
    p = r;
    r = p && Expr(b, l, 4);
    exit_section_(b, l, m, MUL_UN_EXPR, r, p, null);
    return r || p;
  }

  public static boolean DivUnExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "DivUnExpr")) return false;
    if (!nextTokenIsSmart(b, DIV)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, DIV);
    p = r;
    r = p && Expr(b, l, 5);
    exit_section_(b, l, m, DIV_UN_EXPR, r, p, null);
    return r || p;
  }

  public static boolean NotExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "NotExpr")) return false;
    if (!nextTokenIsSmart(b, NOT)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, null);
    r = consumeTokenSmart(b, NOT);
    p = r;
    r = p && Expr(b, l, 8);
    exit_section_(b, l, m, NOT_EXPR, r, p, null);
    return r || p;
  }

  // ParenExpr |
  //     ArrayAccess |
  //     FunCall |
  //     FunRef |
  //     FALSE|
  //     NULL|
  //     TRUE|
  //     Num |
  //     Str |
  //     ID
  public static boolean PrimExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "PrimExpr")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _COLLAPSE_, PRIM_EXPR, "<prim expr>");
    r = ParenExpr(b, l + 1);
    if (!r) r = ArrayAccess(b, l + 1);
    if (!r) r = FunCall(b, l + 1);
    if (!r) r = FunRef(b, l + 1);
    if (!r) r = consumeTokenSmart(b, FALSE);
    if (!r) r = consumeTokenSmart(b, NULL);
    if (!r) r = consumeTokenSmart(b, TRUE);
    if (!r) r = Num(b, l + 1);
    if (!r) r = Str(b, l + 1);
    if (!r) r = consumeTokenSmart(b, ID);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

}
