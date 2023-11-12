// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JASSPrimaryExpr extends JASSExpression {

  @Nullable
  JASSArrayLiteral getArrayLiteral();

  @Nullable
  JASSFunctionLiteral getFunctionLiteral();

  @Nullable
  PsiElement getId();

  @Nullable
  PsiElement getReal();

  @Nullable
  PsiElement getString();

}
