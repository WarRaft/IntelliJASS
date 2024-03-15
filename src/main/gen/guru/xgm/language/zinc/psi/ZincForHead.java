// This is a generated file. Not intended for manual editing.
package guru.xgm.language.zinc.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZincForHead extends PsiElement {

  @NotNull
  List<ZincExpr> getExprList();

  @NotNull
  List<ZincForOp> getForOpList();

  @Nullable
  PsiElement getId();

}
