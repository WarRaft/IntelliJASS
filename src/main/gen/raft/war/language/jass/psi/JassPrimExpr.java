// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JassPrimExpr extends JassExpr {

  @Nullable
  JassArrayAccess getArrayAccess();

  @Nullable
  JassFunCall getFunCall();

  @Nullable
  JassFunRef getFunRef();

  @Nullable
  JassStr getStr();

  @Nullable
  PsiElement getFalse();

  @Nullable
  PsiElement getHexval();

  @Nullable
  PsiElement getId();

  @Nullable
  PsiElement getIntval();

  @Nullable
  PsiElement getNull();

  @Nullable
  PsiElement getRawval();

  @Nullable
  PsiElement getRealval();

  @Nullable
  PsiElement getTrue();

}
