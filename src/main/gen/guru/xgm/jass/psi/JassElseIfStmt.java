// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JassElseIfStmt extends PsiElement {

  @Nullable
  JassExpr getExpr();

  @NotNull
  List<JassStmt> getStmtList();

  @NotNull
  PsiElement getElseif();

  @Nullable
  PsiElement getThen();

}
