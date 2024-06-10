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

public class VjassMulUnaryExprImpl extends VjassExprImpl implements VjassMulUnaryExpr {

  public VjassMulUnaryExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull VjassVisitor visitor) {
    visitor.visitMulUnaryExpr(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof VjassVisitor) accept((VjassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public VjassExpr getExpr() {
    return findChildByClass(VjassExpr.class);
  }

}
