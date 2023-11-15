// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.parser;

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
public class JASSParser implements PsiParser, LightPsiParser {

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
    create_token_set_(AND_EXPR, DIV_EXPR, DIV_UNARY_EXPR, EQUAL_EXPR,
      EXPRESSION, GREATER_THAN_EQUALS_EXPR, GREATER_THAN_EXPR, LESS_THAN_EQUALS_EXPR,
      LESS_THAN_EXPR, MINUS_EXPR, MINUS_UNARY_EXPR, MUL_EXPR,
      MUL_UNARY_EXPR, NOT_EQUALS_EXPR, NOT_EXPR, OR_EXPR,
      PAREN_EXPR, PLUS_EXPR, PLUS_UNARY_EXPR, PRIMARY_EXPR),
  };

  /* ********************************************************** */
  // Expression|FunctionSendLiteral
  public static boolean Argument(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Argument")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, ARGUMENT, "<argument>");
    r = Expression(b, l + 1, -1);
    if (!r) r = FunctionSendLiteral(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  /* ********************************************************** */
  // ID LB Expression? RB
  public static boolean ArrayLiteral(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArrayLiteral")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, ID, LB);
    r = r && ArrayLiteral_2(b, l + 1);
    r = r && consumeToken(b, RB);
    exit_section_(b, m, ARRAY_LITERAL, r);
    return r;
  }

  // Expression?
  private static boolean ArrayLiteral_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ArrayLiteral_2")) return false;
    Expression(b, l + 1, -1);
    return true;
  }

  /* ********************************************************** */
  // DEBUG? CALL? FunctionCallLiteral
  public static boolean CallStatement(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStatement")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, CALL_STATEMENT, "<call statement>");
    r = CallStatement_0(b, l + 1);
    r = r && CallStatement_1(b, l + 1);
    r = r && FunctionCallLiteral(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // DEBUG?
  private static boolean CallStatement_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStatement_0")) return false;
    consumeToken(b, DEBUG);
    return true;
  }

  // CALL?
  private static boolean CallStatement_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "CallStatement_1")) return false;
    consumeToken(b, CALL);
    return true;
  }

  /* ********************************************************** */
  // ELSEIF Expression THEN? Statement*
  public static boolean ElseIfStatement(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseIfStatement")) return false;
    if (!nextTokenIs(b, ELSEIF)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, ELSE_IF_STATEMENT, null);
    r = consumeToken(b, ELSEIF);
    p = r; // pin = 1
    r = r && report_error_(b, Expression(b, l + 1, -1));
    r = p && report_error_(b, ElseIfStatement_2(b, l + 1)) && r;
    r = p && ElseIfStatement_3(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // THEN?
  private static boolean ElseIfStatement_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseIfStatement_2")) return false;
    consumeToken(b, THEN);
    return true;
  }

  // Statement*
  private static boolean ElseIfStatement_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseIfStatement_3")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Statement(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ElseIfStatement_3", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // ELSE Statement*
  public static boolean ElseStatement(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseStatement")) return false;
    if (!nextTokenIs(b, ELSE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, ELSE_STATEMENT, null);
    r = consumeToken(b, ELSE);
    p = r; // pin = 1
    r = r && ElseStatement_1(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Statement*
  private static boolean ElseStatement_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ElseStatement_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Statement(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ElseStatement_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // EXITWHEN Expression
  public static boolean ExitWhenStatement(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ExitWhenStatement")) return false;
    if (!nextTokenIs(b, EXITWHEN)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, EXIT_WHEN_STATEMENT, null);
    r = consumeToken(b, EXITWHEN);
    p = r; // pin = 1
    r = r && Expression(b, l + 1, -1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // ID LP (Argument (COMMA Argument)*)? RP
  public static boolean FunctionCallLiteral(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunctionCallLiteral")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, ID, LP);
    r = r && FunctionCallLiteral_2(b, l + 1);
    r = r && consumeToken(b, RP);
    exit_section_(b, m, FUNCTION_CALL_LITERAL, r);
    return r;
  }

  // (Argument (COMMA Argument)*)?
  private static boolean FunctionCallLiteral_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunctionCallLiteral_2")) return false;
    FunctionCallLiteral_2_0(b, l + 1);
    return true;
  }

  // Argument (COMMA Argument)*
  private static boolean FunctionCallLiteral_2_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunctionCallLiteral_2_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Argument(b, l + 1);
    r = r && FunctionCallLiteral_2_0_1(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  // (COMMA Argument)*
  private static boolean FunctionCallLiteral_2_0_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunctionCallLiteral_2_0_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!FunctionCallLiteral_2_0_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "FunctionCallLiteral_2_0_1", c)) break;
    }
    return true;
  }

  // COMMA Argument
  private static boolean FunctionCallLiteral_2_0_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunctionCallLiteral_2_0_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && Argument(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // FUNCTION FunctionHead Statement* ENDFUNCTION
  public static boolean FunctionDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunctionDeclaration")) return false;
    if (!nextTokenIs(b, FUNCTION)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNCTION_DECLARATION, null);
    r = consumeToken(b, FUNCTION);
    p = r; // pin = 1
    r = r && report_error_(b, FunctionHead(b, l + 1));
    r = p && report_error_(b, FunctionDeclaration_2(b, l + 1)) && r;
    r = p && consumeToken(b, ENDFUNCTION) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Statement*
  private static boolean FunctionDeclaration_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunctionDeclaration_2")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Statement(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "FunctionDeclaration_2", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // FunctionName TAKES (NOTHING|ParamList) RETURNS (NOTHING|ID)
  public static boolean FunctionHead(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunctionHead")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNCTION_HEAD, null);
    r = FunctionName(b, l + 1);
    r = r && consumeToken(b, TAKES);
    p = r; // pin = 2
    r = r && report_error_(b, FunctionHead_2(b, l + 1));
    r = p && report_error_(b, consumeToken(b, RETURNS)) && r;
    r = p && FunctionHead_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // NOTHING|ParamList
  private static boolean FunctionHead_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunctionHead_2")) return false;
    boolean r;
    r = consumeToken(b, NOTHING);
    if (!r) r = ParamList(b, l + 1);
    return r;
  }

  // NOTHING|ID
  private static boolean FunctionHead_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunctionHead_4")) return false;
    boolean r;
    r = consumeToken(b, NOTHING);
    if (!r) r = consumeToken(b, ID);
    return r;
  }

  /* ********************************************************** */
  // ID
  public static boolean FunctionName(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunctionName")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, ID);
    exit_section_(b, m, FUNCTION_NAME, r);
    return r;
  }

  /* ********************************************************** */
  // FUNCTION ID
  public static boolean FunctionSendLiteral(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "FunctionSendLiteral")) return false;
    if (!nextTokenIs(b, FUNCTION)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, FUNCTION_SEND_LITERAL, null);
    r = consumeTokens(b, 1, FUNCTION, ID);
    p = r; // pin = 1
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // CONSTANT? ID ARRAY? ID (EQ Expression)?
  public static boolean GlobalVarDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GlobalVarDeclaration")) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, GLOBAL_VAR_DECLARATION, "<global var declaration>");
    r = GlobalVarDeclaration_0(b, l + 1);
    r = r && consumeToken(b, ID);
    p = r; // pin = 2
    r = r && report_error_(b, GlobalVarDeclaration_2(b, l + 1));
    r = p && report_error_(b, consumeToken(b, ID)) && r;
    r = p && GlobalVarDeclaration_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, JASSParser::GlobalVarDeclarationRecover);
    return r || p;
  }

  // CONSTANT?
  private static boolean GlobalVarDeclaration_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GlobalVarDeclaration_0")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  // ARRAY?
  private static boolean GlobalVarDeclaration_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GlobalVarDeclaration_2")) return false;
    consumeToken(b, ARRAY);
    return true;
  }

  // (EQ Expression)?
  private static boolean GlobalVarDeclaration_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GlobalVarDeclaration_4")) return false;
    GlobalVarDeclaration_4_0(b, l + 1);
    return true;
  }

  // EQ Expression
  private static boolean GlobalVarDeclaration_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GlobalVarDeclaration_4_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Expression(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // !(CONSTANT|ENDGLOBALS|ID ID|ID ARRAY|ID EQ)
  static boolean GlobalVarDeclarationRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GlobalVarDeclarationRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !GlobalVarDeclarationRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // CONSTANT|ENDGLOBALS|ID ID|ID ARRAY|ID EQ
  private static boolean GlobalVarDeclarationRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GlobalVarDeclarationRecover_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, CONSTANT);
    if (!r) r = consumeToken(b, ENDGLOBALS);
    if (!r) r = parseTokens(b, 0, ID, ID);
    if (!r) r = parseTokens(b, 0, ID, ARRAY);
    if (!r) r = parseTokens(b, 0, ID, EQ);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // GLOBALS GlobalVarDeclaration* ENDGLOBALS
  public static boolean GlobalsDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GlobalsDeclaration")) return false;
    if (!nextTokenIs(b, GLOBALS)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, GLOBALS_DECLARATION, null);
    r = consumeToken(b, GLOBALS);
    p = r; // pin = 1
    r = r && report_error_(b, GlobalsDeclaration_1(b, l + 1));
    r = p && consumeToken(b, ENDGLOBALS) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // GlobalVarDeclaration*
  private static boolean GlobalsDeclaration_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "GlobalsDeclaration_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!GlobalVarDeclaration(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "GlobalsDeclaration_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // IF Expression THEN? (Statement|ElseIfStatement|ElseStatement)* ENDIF
  public static boolean IfStatement(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStatement")) return false;
    if (!nextTokenIs(b, IF)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, IF_STATEMENT, null);
    r = consumeToken(b, IF);
    p = r; // pin = 1
    r = r && report_error_(b, Expression(b, l + 1, -1));
    r = p && report_error_(b, IfStatement_2(b, l + 1)) && r;
    r = p && report_error_(b, IfStatement_3(b, l + 1)) && r;
    r = p && consumeToken(b, ENDIF) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // THEN?
  private static boolean IfStatement_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStatement_2")) return false;
    consumeToken(b, THEN);
    return true;
  }

  // (Statement|ElseIfStatement|ElseStatement)*
  private static boolean IfStatement_3(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStatement_3")) return false;
    while (true) {
      int c = current_position_(b);
      if (!IfStatement_3_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "IfStatement_3", c)) break;
    }
    return true;
  }

  // Statement|ElseIfStatement|ElseStatement
  private static boolean IfStatement_3_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "IfStatement_3_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = Statement(b, l + 1);
    if (!r) r = ElseIfStatement(b, l + 1);
    if (!r) r = ElseStatement(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // LOCAL? ID ARRAY? ID (EQ Expression)?
  public static boolean LocalVarStatement(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LocalVarStatement")) return false;
    if (!nextTokenIs(b, "<local var statement>", ID, LOCAL)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LOCAL_VAR_STATEMENT, "<local var statement>");
    r = LocalVarStatement_0(b, l + 1);
    r = r && consumeToken(b, ID);
    p = r; // pin = 2
    r = r && report_error_(b, LocalVarStatement_2(b, l + 1));
    r = p && report_error_(b, consumeToken(b, ID)) && r;
    r = p && LocalVarStatement_4(b, l + 1) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // LOCAL?
  private static boolean LocalVarStatement_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LocalVarStatement_0")) return false;
    consumeToken(b, LOCAL);
    return true;
  }

  // ARRAY?
  private static boolean LocalVarStatement_2(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LocalVarStatement_2")) return false;
    consumeToken(b, ARRAY);
    return true;
  }

  // (EQ Expression)?
  private static boolean LocalVarStatement_4(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LocalVarStatement_4")) return false;
    LocalVarStatement_4_0(b, l + 1);
    return true;
  }

  // EQ Expression
  private static boolean LocalVarStatement_4_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LocalVarStatement_4_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, EQ);
    r = r && Expression(b, l + 1, -1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // LOOP Statement* ENDLOOP
  public static boolean LoopStatement(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LoopStatement")) return false;
    if (!nextTokenIs(b, LOOP)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, LOOP_STATEMENT, null);
    r = consumeToken(b, LOOP);
    p = r; // pin = 1
    r = r && report_error_(b, LoopStatement_1(b, l + 1));
    r = p && consumeToken(b, ENDLOOP) && r;
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // Statement*
  private static boolean LoopStatement_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "LoopStatement_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!Statement(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "LoopStatement_1", c)) break;
    }
    return true;
  }

  /* ********************************************************** */
  // CONSTANT? NATIVE FunctionHead
  public static boolean NativeDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "NativeDeclaration")) return false;
    if (!nextTokenIs(b, "<native declaration>", CONSTANT, NATIVE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, NATIVE_DECLARATION, "<native declaration>");
    r = NativeDeclaration_0(b, l + 1);
    r = r && consumeToken(b, NATIVE);
    p = r; // pin = 2
    r = r && FunctionHead(b, l + 1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // CONSTANT?
  private static boolean NativeDeclaration_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "NativeDeclaration_0")) return false;
    consumeToken(b, CONSTANT);
    return true;
  }

  /* ********************************************************** */
  // TypedVariable  (COMMA TypedVariable)*
  public static boolean ParamList(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamList")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = TypedVariable(b, l + 1);
    r = r && ParamList_1(b, l + 1);
    exit_section_(b, m, PARAM_LIST, r);
    return r;
  }

  // (COMMA TypedVariable)*
  private static boolean ParamList_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamList_1")) return false;
    while (true) {
      int c = current_position_(b);
      if (!ParamList_1_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "ParamList_1", c)) break;
    }
    return true;
  }

  // COMMA TypedVariable
  private static boolean ParamList_1_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParamList_1_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, COMMA);
    r = r && TypedVariable(b, l + 1);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // LP Expression RP
  public static boolean ParenExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ParenExpr")) return false;
    if (!nextTokenIs(b, LP)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, LP);
    r = r && Expression(b, l + 1, -1);
    r = r && consumeToken(b, RP);
    exit_section_(b, m, PAREN_EXPR, r);
    return r;
  }

  /* ********************************************************** */
  // RETURN Expression?
  public static boolean ReturnStatement(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ReturnStatement")) return false;
    if (!nextTokenIs(b, RETURN)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, RETURN);
    r = r && ReturnStatement_1(b, l + 1);
    exit_section_(b, m, RETURN_STATEMENT, r);
    return r;
  }

  // Expression?
  private static boolean ReturnStatement_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "ReturnStatement_1")) return false;
    Expression(b, l + 1, -1);
    return true;
  }

  /* ********************************************************** */
  // (
  //     TypeDeclaration |
  //     NativeDeclaration |
  //     GlobalsDeclaration |
  //     FunctionDeclaration
  //     )*
  static boolean Root(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root")) return false;
    Marker m = enter_section_(b, l, _NONE_);
    while (true) {
      int c = current_position_(b);
      if (!Root_0(b, l + 1)) break;
      if (!empty_element_parsed_guard_(b, "Root", c)) break;
    }
    exit_section_(b, l, m, true, false, JASSParser::rootRecover);
    return true;
  }

  // TypeDeclaration |
  //     NativeDeclaration |
  //     GlobalsDeclaration |
  //     FunctionDeclaration
  private static boolean Root_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Root_0")) return false;
    boolean r;
    r = TypeDeclaration(b, l + 1);
    if (!r) r = NativeDeclaration(b, l + 1);
    if (!r) r = GlobalsDeclaration(b, l + 1);
    if (!r) r = FunctionDeclaration(b, l + 1);
    return r;
  }

  /* ********************************************************** */
  // SET? (ArrayLiteral|ID) EQ Expression
  public static boolean SetStatement(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SetStatement")) return false;
    if (!nextTokenIs(b, "<set statement>", ID, SET)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, SET_STATEMENT, "<set statement>");
    r = SetStatement_0(b, l + 1);
    r = r && SetStatement_1(b, l + 1);
    r = r && consumeToken(b, EQ);
    p = r; // pin = 3
    r = r && Expression(b, l + 1, -1);
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  // SET?
  private static boolean SetStatement_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SetStatement_0")) return false;
    consumeToken(b, SET);
    return true;
  }

  // ArrayLiteral|ID
  private static boolean SetStatement_1(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "SetStatement_1")) return false;
    boolean r;
    r = ArrayLiteral(b, l + 1);
    if (!r) r = consumeToken(b, ID);
    return r;
  }

  /* ********************************************************** */
  // SetStatement |
  //     CallStatement |
  //     LocalVarStatement |
  //     ReturnStatement |
  //     IfStatement |
  //     LoopStatement |
  //     ExitWhenStatement
  public static boolean Statement(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "Statement")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NONE_, STATEMENT, "<statement>");
    r = SetStatement(b, l + 1);
    if (!r) r = CallStatement(b, l + 1);
    if (!r) r = LocalVarStatement(b, l + 1);
    if (!r) r = ReturnStatement(b, l + 1);
    if (!r) r = IfStatement(b, l + 1);
    if (!r) r = LoopStatement(b, l + 1);
    if (!r) r = ExitWhenStatement(b, l + 1);
    exit_section_(b, l, m, r, false, JASSParser::StatementRecover);
    return r;
  }

  /* ********************************************************** */
  // !(CALL|DEBUG|ELSE|ELSEIF|ENDFUNCTION|ENDLOOP|ENDIF|EXITWHEN|IF|LOCAL|LOOP|RETURN|SET|ID EQ|ID LP|ID LB|ID ID|ID ARRAY)
  static boolean StatementRecover(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StatementRecover")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _NOT_);
    r = !StatementRecover_0(b, l + 1);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

  // CALL|DEBUG|ELSE|ELSEIF|ENDFUNCTION|ENDLOOP|ENDIF|EXITWHEN|IF|LOCAL|LOOP|RETURN|SET|ID EQ|ID LP|ID LB|ID ID|ID ARRAY
  private static boolean StatementRecover_0(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "StatementRecover_0")) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeToken(b, CALL);
    if (!r) r = consumeToken(b, DEBUG);
    if (!r) r = consumeToken(b, ELSE);
    if (!r) r = consumeToken(b, ELSEIF);
    if (!r) r = consumeToken(b, ENDFUNCTION);
    if (!r) r = consumeToken(b, ENDLOOP);
    if (!r) r = consumeToken(b, ENDIF);
    if (!r) r = consumeToken(b, EXITWHEN);
    if (!r) r = consumeToken(b, IF);
    if (!r) r = consumeToken(b, LOCAL);
    if (!r) r = consumeToken(b, LOOP);
    if (!r) r = consumeToken(b, RETURN);
    if (!r) r = consumeToken(b, SET);
    if (!r) r = parseTokens(b, 0, ID, EQ);
    if (!r) r = parseTokens(b, 0, ID, LP);
    if (!r) r = parseTokens(b, 0, ID, LB);
    if (!r) r = parseTokens(b, 0, ID, ID);
    if (!r) r = parseTokens(b, 0, ID, ARRAY);
    exit_section_(b, m, null, r);
    return r;
  }

  /* ********************************************************** */
  // TYPE ID EXTENDS ID
  public static boolean TypeDeclaration(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypeDeclaration")) return false;
    if (!nextTokenIs(b, TYPE)) return false;
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, TYPE_DECLARATION, null);
    r = consumeTokens(b, 1, TYPE, ID, EXTENDS, ID);
    p = r; // pin = 1
    exit_section_(b, l, m, r, p, null);
    return r || p;
  }

  /* ********************************************************** */
  // ID ID
  public static boolean TypedVariable(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "TypedVariable")) return false;
    if (!nextTokenIs(b, ID)) return false;
    boolean r;
    Marker m = enter_section_(b);
    r = consumeTokens(b, 0, ID, ID);
    exit_section_(b, m, TYPED_VARIABLE, r);
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
  // Expression root: Expression
  // Operator priority table:
  // 0: BINARY(PlusExpr) BINARY(MinusExpr)
  // 1: BINARY(MulExpr) BINARY(DivExpr)
  // 2: PREFIX(MulUnaryExpr) PREFIX(DivUnaryExpr) PREFIX(PlusUnaryExpr) PREFIX(MinusUnaryExpr)
  //    PREFIX(NotExpr)
  // 3: BINARY(EqualExpr) BINARY(NotEqualsExpr) BINARY(LessThanExpr) BINARY(LessThanEqualsExpr)
  //    BINARY(GreaterThanExpr) BINARY(GreaterThanEqualsExpr)
  // 4: BINARY(OrExpr)
  // 5: BINARY(AndExpr)
  // 6: ATOM(PrimaryExpr)
  public static boolean Expression(PsiBuilder b, int l, int g) {
    if (!recursion_guard_(b, l, "Expression")) return false;
    addVariant(b, "<expression>");
    boolean r, p;
    Marker m = enter_section_(b, l, _NONE_, "<expression>");
    r = PlusUnaryExpr(b, l + 1);
    if (!r) r = MinusUnaryExpr(b, l + 1);
    if (!r) r = MulUnaryExpr(b, l + 1);
    if (!r) r = DivUnaryExpr(b, l + 1);
    if (!r) r = NotExpr(b, l + 1);
    if (!r) r = PrimaryExpr(b, l + 1);
    p = r;
    r = r && Expression_0(b, l + 1, g);
    exit_section_(b, l, m, null, r, p, null);
    return r || p;
  }

  public static boolean Expression_0(PsiBuilder b, int l, int g) {
    if (!recursion_guard_(b, l, "Expression_0")) return false;
    boolean r = true;
    while (true) {
      Marker m = enter_section_(b, l, _LEFT_, null);
      if (g < 0 && consumeTokenSmart(b, PLUS)) {
        r = Expression(b, l, 0);
        exit_section_(b, l, m, PLUS_EXPR, r, true, null);
      }
      else if (g < 0 && consumeTokenSmart(b, MINUS)) {
        r = Expression(b, l, 0);
        exit_section_(b, l, m, MINUS_EXPR, r, true, null);
      }
      else if (g < 1 && consumeTokenSmart(b, MUL)) {
        r = Expression(b, l, 1);
        exit_section_(b, l, m, MUL_EXPR, r, true, null);
      }
      else if (g < 1 && consumeTokenSmart(b, DIV)) {
        r = Expression(b, l, 1);
        exit_section_(b, l, m, DIV_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, EQEQ)) {
        r = Expression(b, l, 3);
        exit_section_(b, l, m, EQUAL_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, NEQ)) {
        r = Expression(b, l, 3);
        exit_section_(b, l, m, NOT_EQUALS_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, LT)) {
        r = Expression(b, l, 3);
        exit_section_(b, l, m, LESS_THAN_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, LTEQ)) {
        r = Expression(b, l, 3);
        exit_section_(b, l, m, LESS_THAN_EQUALS_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, GT)) {
        r = Expression(b, l, 3);
        exit_section_(b, l, m, GREATER_THAN_EXPR, r, true, null);
      }
      else if (g < 3 && consumeTokenSmart(b, GTEQ)) {
        r = Expression(b, l, 3);
        exit_section_(b, l, m, GREATER_THAN_EQUALS_EXPR, r, true, null);
      }
      else if (g < 4 && consumeTokenSmart(b, OR)) {
        r = Expression(b, l, 4);
        exit_section_(b, l, m, OR_EXPR, r, true, null);
      }
      else if (g < 5 && consumeTokenSmart(b, AND)) {
        r = Expression(b, l, 5);
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
    r = p && Expression(b, l, 2);
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
    r = p && Expression(b, l, 2);
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
    r = p && Expression(b, l, 2);
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
    r = p && Expression(b, l, 2);
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
    r = p && Expression(b, l, 2);
    exit_section_(b, l, m, NOT_EXPR, r, p, null);
    return r || p;
  }

  // FALSE |
  //     NULL |
  //     TRUE |
  //     ParenExpr |
  //     ArrayLiteral |
  //     FunctionCallLiteral |
  //     REAL |
  //     HEX |
  //     INTEGER |
  //     RAWCODE |
  //     STRING |
  //     ID
  public static boolean PrimaryExpr(PsiBuilder b, int l) {
    if (!recursion_guard_(b, l, "PrimaryExpr")) return false;
    boolean r;
    Marker m = enter_section_(b, l, _COLLAPSE_, PRIMARY_EXPR, "<primary expr>");
    r = consumeTokenSmart(b, FALSE);
    if (!r) r = consumeTokenSmart(b, NULL);
    if (!r) r = consumeTokenSmart(b, TRUE);
    if (!r) r = ParenExpr(b, l + 1);
    if (!r) r = ArrayLiteral(b, l + 1);
    if (!r) r = FunctionCallLiteral(b, l + 1);
    if (!r) r = consumeTokenSmart(b, REAL);
    if (!r) r = consumeTokenSmart(b, HEX);
    if (!r) r = consumeTokenSmart(b, INTEGER);
    if (!r) r = consumeTokenSmart(b, RAWCODE);
    if (!r) r = consumeTokenSmart(b, STRING);
    if (!r) r = consumeTokenSmart(b, ID);
    exit_section_(b, l, m, r, false, null);
    return r;
  }

}
