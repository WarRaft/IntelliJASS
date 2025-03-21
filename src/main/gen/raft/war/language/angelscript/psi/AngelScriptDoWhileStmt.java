// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptDoWhileStmt extends PsiElement {

  @Nullable
  AngelScriptAssign getAssign();

  @Nullable
  AngelScriptBreakStmt getBreakStmt();

  @Nullable
  AngelScriptContinueStmt getContinueStmt();

  @Nullable
  AngelScriptDoWhileStmt getDoWhileStmt();

  @Nullable
  AngelScriptExprStat getExprStat();

  @Nullable
  AngelScriptForStmt getForStmt();

  @Nullable
  AngelScriptIfStmt getIfStmt();

  @Nullable
  AngelScriptReturnStmt getReturnStmt();

  @Nullable
  AngelScriptStmtBracer getStmtBracer();

  @Nullable
  AngelScriptSwitchStmt getSwitchStmt();

  @Nullable
  AngelScriptWhileStmt getWhileStmt();

  @NotNull
  PsiElement getDo();

  @Nullable
  PsiElement getLparen();

  @Nullable
  PsiElement getRparen();

  @Nullable
  PsiElement getSemi();

  @Nullable
  PsiElement getWhile();

}
