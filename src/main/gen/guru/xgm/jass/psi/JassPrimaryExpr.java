// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JassPrimaryExpr extends JassExpr {

  @Nullable
  JassArrayAccess getArrayAccess();

  @Nullable
  JassFuncAsCode getFuncAsCode();

  @Nullable
  JassFuncCall getFuncCall();

  @Nullable
  PsiElement getHexval();

  @Nullable
  PsiElement getId();

  @Nullable
  PsiElement getIntval();

  @Nullable
  PsiElement getStrval();

}
