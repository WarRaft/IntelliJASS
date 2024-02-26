// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JassNativeDef extends PsiElement {

  @Nullable
  JassFuncDefName getFuncDefName();

  @Nullable
  JassFuncReturns getFuncReturns();

  @Nullable
  JassFuncTakes getFuncTakes();

  @Nullable
  PsiElement getConstant();

  @NotNull
  PsiElement getNative();

}
