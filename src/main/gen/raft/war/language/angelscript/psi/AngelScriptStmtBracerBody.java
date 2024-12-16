// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptStmtBracerBody extends PsiElement {

  @NotNull
  List<AngelScriptBreakStmt> getBreakStmtList();

  @NotNull
  List<AngelScriptContinueStmt> getContinueStmtList();

  @NotNull
  List<AngelScriptDoWhileStmt> getDoWhileStmtList();

  @NotNull
  List<AngelScriptExprStat> getExprStatList();

  @NotNull
  List<AngelScriptForStmt> getForStmtList();

  @NotNull
  List<AngelScriptIfStmt> getIfStmtList();

  @NotNull
  List<AngelScriptReturnStmt> getReturnStmtList();

  @NotNull
  List<AngelScriptStmtBracer> getStmtBracerList();

  @NotNull
  List<AngelScriptSwitchStmt> getSwitchStmtList();

  @NotNull
  List<AngelScriptVar> getVarList();

  @NotNull
  List<AngelScriptWhileStmt> getWhileStmtList();

}
