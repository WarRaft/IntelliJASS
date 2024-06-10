// This is a generated file. Not intended for manual editing.
package raft.war.language.zinc.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZincPrimaryExpr extends ZincExpr {

  @Nullable
  ZincArrayAccess getArrayAccess();

  @Nullable
  ZincFuncAsCode getFuncAsCode();

  @Nullable
  PsiElement getHexval();

  @Nullable
  PsiElement getId();

  @Nullable
  PsiElement getIntval();

  @Nullable
  PsiElement getRawval();

  @Nullable
  PsiElement getRealval();

  @Nullable
  PsiElement getStrval();

}
