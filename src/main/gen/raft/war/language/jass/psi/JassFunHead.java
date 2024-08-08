// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;
import raft.war.language.jass.psi.compositeElement.JassCompositeElement;

public interface JassFunHead extends JassCompositeElement {

  @Nullable
  JassFunName getFunName();

  @Nullable
  JassFunRet getFunRet();

  @Nullable
  JassFunTake getFunTake();

  @Nullable
  PsiElement getConstant();

  @NotNull
  PsiElement getFunction();

}
