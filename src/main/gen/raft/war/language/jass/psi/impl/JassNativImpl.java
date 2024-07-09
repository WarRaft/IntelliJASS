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

public class JassNativImpl extends ASTWrapperPsiElement implements JassNativ {

  public JassNativImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitNativ(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public JassFunRet getFunRet() {
    return PsiTreeUtil.getChildOfType(this, JassFunRet.class);
  }

  @Override
  @Nullable
  public JassFunTake getFunTake() {
    return PsiTreeUtil.getChildOfType(this, JassFunTake.class);
  }

  @Override
  @Nullable
  public PsiElement getConstant() {
    return findChildByType(CONSTANT);
  }

  @Override
  @Nullable
  public PsiElement getId() {
    return findChildByType(ID);
  }

  @Override
  @NotNull
  public PsiElement getNative() {
    return notNullChild(findChildByType(NATIVE));
  }

}
