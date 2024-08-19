// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptForStmt extends PsiElement {

  @NotNull
  List<AngelScriptAssign> getAssignList();

  @Nullable
  AngelScriptBreakStmt getBreakStmt();

  @Nullable
  AngelScriptDoWhileStmt getDoWhileStmt();

  @NotNull
  List<AngelScriptExprStat> getExprStatList();

  @Nullable
  AngelScriptForStmt getForStmt();

  @Nullable
  AngelScriptIfStmt getIfStmt();

  @Nullable
  AngelScriptReturnStmt getReturnStmt();

  @Nullable
  AngelScriptStatBlock getStatBlock();

  @Nullable
  AngelScriptSwitchStmt getSwitchStmt();

  @Nullable
  AngelScriptVar getVar();

  @Nullable
  AngelScriptWhileStmt getWhileStmt();

  @NotNull
  PsiElement getFor();

  @NotNull
  PsiElement getLparen();

  @NotNull
  PsiElement getRparen();

}
