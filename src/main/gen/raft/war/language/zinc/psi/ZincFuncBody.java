// This is a generated file. Not intended for manual editing.
package raft.war.language.zinc.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZincFuncBody extends PsiElement {

  @NotNull
  List<ZincBreakStmt> getBreakStmtList();

  @NotNull
  List<ZincDoStmt> getDoStmtList();

  @NotNull
  List<ZincExprStmt> getExprStmtList();

  @NotNull
  List<ZincForStmt> getForStmtList();

  @NotNull
  List<ZincIfStmt> getIfStmtList();

  @NotNull
  List<ZincReturnStmt> getReturnStmtList();

  @NotNull
  List<ZincVarDef> getVarDefList();

  @NotNull
  List<ZincWhileStmt> getWhileStmtList();

}
