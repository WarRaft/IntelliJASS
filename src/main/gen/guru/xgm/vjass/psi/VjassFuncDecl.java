// This is a generated file. Not intended for manual editing.
package guru.xgm.vjass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface VjassFuncDecl extends PsiElement {

  @Nullable
  VjassFuncDeclName getFuncDeclName();

  @Nullable
  VjassFuncReturns getFuncReturns();

  @Nullable
  VjassFuncTakes getFuncTakes();

  @NotNull
  List<VjassStmt> getStmtList();

}
