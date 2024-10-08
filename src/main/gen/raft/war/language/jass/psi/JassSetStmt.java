// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;
import raft.war.language.jass.psi.compositeElement.JassCompositeElement;

public interface JassSetStmt extends JassCompositeElement {

  @Nullable
  JassArrayAccess getArrayAccess();

  @Nullable
  JassExpr getExpr();

  @Nullable
  JassVarName getVarName();

  @NotNull
  PsiElement getEq();

  @Nullable
  PsiElement getSet();

}
