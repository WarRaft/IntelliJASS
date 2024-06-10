// This is a generated file. Not intended for manual editing.
package raft.war.language.vjass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.vjass.psi.VjassTypes.*;
import raft.war.language.vjass.psi.*;

public class VjassLtEqExprImpl extends VjassExprImpl implements VjassLtEqExpr {

  public VjassLtEqExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull VjassVisitor visitor) {
    visitor.visitLtEqExpr(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof VjassVisitor) accept((VjassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<VjassExpr> getExprList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, VjassExpr.class);
  }

}
