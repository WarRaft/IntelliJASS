// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JASSNativeDeclaration extends PsiElement {

  @NotNull
  List<JASSArgument> getArgumentList();

  @Nullable
  JASSFunctionName getFunctionName();

  @Nullable
  JASSType getType();

}
