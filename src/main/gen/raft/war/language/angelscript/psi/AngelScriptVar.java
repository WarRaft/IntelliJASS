// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptVar extends PsiElement {

  @NotNull
  List<AngelScriptArgList> getArgListList();

  @NotNull
  List<AngelScriptExpr> getExprList();

  @NotNull
  List<AngelScriptInitList> getInitListList();

  @NotNull
  AngelScriptType getType();

  @Nullable
  PsiElement getPrivate();

  @Nullable
  PsiElement getProtected();

  @NotNull
  PsiElement getSemi();

}
