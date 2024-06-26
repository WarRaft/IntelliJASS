// This is a generated file. Not intended for manual editing.
package raft.war.language.vjass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface VjassPrimaryExpr extends VjassExpr {

  @Nullable
  VjassArrayAccess getArrayAccess();

  @Nullable
  VjassFuncAsCode getFuncAsCode();

  @Nullable
  VjassFuncCall getFuncCall();

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
