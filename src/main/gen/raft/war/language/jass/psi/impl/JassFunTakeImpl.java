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

public class JassFunTakeImpl extends ASTWrapperPsiElement implements JassFunTake {

  public JassFunTakeImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitFunTake(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public JassParamList getParamList() {
    return PsiTreeUtil.getChildOfType(this, JassParamList.class);
  }

  @Override
  @Nullable
  public PsiElement getNothing() {
    return findChildByType(NOTHING);
  }

  @Override
  @NotNull
  public PsiElement getTakes() {
    return notNullChild(findChildByType(TAKES));
  }

}
