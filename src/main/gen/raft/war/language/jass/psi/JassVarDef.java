// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;
import raft.war.language.jass.psi.compositeElement.JassCompositeElement;

public interface JassVarDef extends JassCompositeElement {

  @Nullable
  JassExpr getExpr();

  @NotNull
  JassTypeName getTypeName();

  @Nullable
  PsiElement getArray();

  @Nullable
  PsiElement getEq();

  @NotNull
  PsiElement getId();

}
