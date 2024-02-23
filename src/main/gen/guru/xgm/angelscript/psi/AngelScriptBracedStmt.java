// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptBracedStmt extends PsiElement {

  @NotNull
  List<AngelScriptBreakStmt> getBreakStmtList();

  @NotNull
  List<AngelScriptDoStmt> getDoStmtList();

  @NotNull
  List<AngelScriptExprStmt> getExprStmtList();

  @NotNull
  List<AngelScriptForStmt> getForStmtList();

  @NotNull
  List<AngelScriptIfStmt> getIfStmtList();

  @NotNull
  List<AngelScriptReturnStmt> getReturnStmtList();

  @NotNull
  List<AngelScriptVarDef> getVarDefList();

  @NotNull
  List<AngelScriptWhileStmt> getWhileStmtList();

}
