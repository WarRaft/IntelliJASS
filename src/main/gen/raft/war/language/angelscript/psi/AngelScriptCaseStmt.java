// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptCaseStmt extends PsiElement {

  @NotNull
  AngelScriptCaseStmtList getCaseStmtList();

  @Nullable
  AngelScriptExpr getExpr();

  @Nullable
  PsiElement getCase();

  @NotNull
  PsiElement getColon();

  @Nullable
  PsiElement getDefault();

}
