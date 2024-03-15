// This is a generated file. Not intended for manual editing.
package guru.xgm.language.vjass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface VjassMethodDef extends PsiElement {

  @Nullable
  VjassFuncReturns getFuncReturns();

  @Nullable
  VjassFuncTakes getFuncTakes();

  @NotNull
  List<VjassStmt> getStmtList();

  @Nullable
  VjassVis getVis();

  @Nullable
  PsiElement getId();

}
