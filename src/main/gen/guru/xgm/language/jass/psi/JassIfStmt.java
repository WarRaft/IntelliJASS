// This is a generated file. Not intended for manual editing.
package guru.xgm.language.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JassIfStmt extends PsiElement {

  @NotNull
  List<JassElseIfStmt> getElseIfStmtList();

  @NotNull
  List<JassElseStmt> getElseStmtList();

  @Nullable
  JassExpr getExpr();

  @NotNull
  List<JassStmt> getStmtList();

  @Nullable
  PsiElement getEndif();

  @NotNull
  PsiElement getIf();

  @Nullable
  PsiElement getThen();

}
