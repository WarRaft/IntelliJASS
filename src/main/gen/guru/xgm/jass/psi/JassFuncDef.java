// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JassFuncDef extends PsiElement {

  @Nullable
  JassFuncDefName getFuncDefName();

  @Nullable
  JassFuncReturns getFuncReturns();

  @Nullable
  JassFuncTakes getFuncTakes();

  @NotNull
  List<JassStmt> getStmtList();

  @Nullable
  PsiElement getConstant();

  @Nullable
  PsiElement getEndfunction();

  @NotNull
  PsiElement getFunction();

}
