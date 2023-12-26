// This is a generated file. Not intended for manual editing.
package guru.xgm.zinc.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZincStructMethod extends PsiElement {

  @NotNull
  ZincFuncBody getFuncBody();

  @Nullable
  ZincFuncReturns getFuncReturns();

  @Nullable
  ZincTypedVarList getTypedVarList();

  @NotNull
  PsiElement getId();

}
