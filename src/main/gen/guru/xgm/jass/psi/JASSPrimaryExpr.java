// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JASSPrimaryExpr extends JASSExpression {

  @Nullable
  JASSArrayLiteral getArrayLiteral();

  @Nullable
  JASSFunctionCallLiteral getFunctionCallLiteral();

  @Nullable
  PsiElement getHex();

  @Nullable
  PsiElement getId();

  @Nullable
  PsiElement getInteger();

  @Nullable
  PsiElement getRawcode();

  @Nullable
  PsiElement getReal();

  @Nullable
  PsiElement getString();

}
