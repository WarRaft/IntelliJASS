// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptCondition extends PsiElement {

  @NotNull
  List<AngelScriptAssign> getAssignList();

  @NotNull
  AngelScriptExpr getExpr();

  @Nullable
  PsiElement getColon();

  @Nullable
  PsiElement getQuest();

}
