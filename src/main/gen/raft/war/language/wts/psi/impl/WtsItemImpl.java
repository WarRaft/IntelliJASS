// This is a generated file. Not intended for manual editing.
package raft.war.language.wts.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.wts.psi.WtsTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import raft.war.language.wts.psi.*;

public class WtsItemImpl extends ASTWrapperPsiElement implements WtsItem {

  public WtsItemImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull WtsVisitor visitor) {
    visitor.visitItem(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof WtsVisitor) accept((WtsVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public PsiElement getId() {
    return findNotNullChildByType(ID);
  }

  @Override
  @NotNull
  public PsiElement getString() {
    return findNotNullChildByType(STRING);
  }

  @Override
  @NotNull
  public PsiElement getValue() {
    return findNotNullChildByType(VALUE);
  }

}
