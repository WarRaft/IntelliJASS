// This is a generated file. Not intended for manual editing.
package guru.xgm.zinc.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZincCallStmt extends PsiElement {

  @Nullable
  ZincFuncCall getFuncCall();

  @NotNull
  List<ZincStructAccess> getStructAccessList();

  @Nullable
  PsiElement getId();

}
