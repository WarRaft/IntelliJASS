// This is a generated file. Not intended for manual editing.
package guru.xgm.vjass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.vjass.psi.VjassTypes.*;
import guru.xgm.vjass.psi.*;

public class VjassNEqExprImpl extends VjassExprImpl implements VjassNEqExpr {

  public VjassNEqExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull VjassVisitor visitor) {
    visitor.visitNEqExpr(this);
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
