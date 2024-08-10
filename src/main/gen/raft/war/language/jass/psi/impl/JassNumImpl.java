// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.jass.psi.JassTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import raft.war.language.jass.psi.*;

public class JassNumImpl extends ASTWrapperPsiElement implements JassNum {

  public JassNumImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitNum(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public PsiElement getHexval() {
    return findChildByType(HEXVAL);
  }

  @Override
  @Nullable
  public PsiElement getIntval() {
    return findChildByType(INTVAL);
  }

  @Override
  @Nullable
  public PsiElement getRawval() {
    return findChildByType(RAWVAL);
  }

  @Override
  @Nullable
  public PsiElement getRealval() {
    return findChildByType(REALVAL);
  }

}
