// This is a generated file. Not intended for manual editing.
package guru.xgm.vjass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface VjassFun extends PsiElement {

  @Nullable
  VjassFuncDefName getFuncDefName();

  @Nullable
  VjassFuncReturns getFuncReturns();

  @Nullable
  VjassFuncTakes getFuncTakes();

  @NotNull
  List<VjassStmt> getStmtList();

  @Nullable
  VjassVis getVis();

}
