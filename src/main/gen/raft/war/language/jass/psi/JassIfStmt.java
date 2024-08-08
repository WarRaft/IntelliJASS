// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;
import raft.war.language.jass.psi.compositeElement.JassCompositeElement;

public interface JassIfStmt extends JassCompositeElement {

  @NotNull
  List<JassElseIfStmt> getElseIfStmtList();

  @NotNull
  List<JassElseStmt> getElseStmtList();

  @Nullable
  JassExpr getExpr();

  @Nullable
  JassFunBody getFunBody();

  @Nullable
  PsiElement getEndif();

  @NotNull
  PsiElement getIf();

  @Nullable
  PsiElement getThen();

}
