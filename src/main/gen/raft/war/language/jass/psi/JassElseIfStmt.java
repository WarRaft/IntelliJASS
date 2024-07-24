// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;
import raft.war.language.jass.psi.compositeElement.JassCompositeElement;

public interface JassElseIfStmt extends JassCompositeElement {

  @Nullable
  JassExpr getExpr();

  @Nullable
  JassFunStmt getFunStmt();

  @NotNull
  PsiElement getElseif();

  @Nullable
  PsiElement getThen();

}
