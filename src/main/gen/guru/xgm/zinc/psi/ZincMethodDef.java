// This is a generated file. Not intended for manual editing.
package guru.xgm.zinc.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZincMethodDef extends PsiElement {

  @Nullable
  ZincFuncBody getFuncBody();

  @Nullable
  ZincFuncReturns getFuncReturns();

  @Nullable
  ZincTypedVarList getTypedVarList();

  @Nullable
  ZincVis getVis();

  @Nullable
  PsiElement getId();

}
