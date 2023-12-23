// This is a generated file. Not intended for manual editing.
package guru.xgm.zinc.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.zinc.psi.ZincTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.zinc.psi.*;

public class ZincIfStmtImpl extends ASTWrapperPsiElement implements ZincIfStmt {

  public ZincIfStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitIfStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public ZincBracedStmt getBracedStmt() {
    return findChildByClass(ZincBracedStmt.class);
  }

  @Override
  @Nullable
  public ZincElseStmt getElseStmt() {
    return findChildByClass(ZincElseStmt.class);
  }

  @Override
  @Nullable
  public ZincExpr getExpr() {
    return findChildByClass(ZincExpr.class);
  }

  @Override
  @Nullable
  public ZincStmt getStmt() {
    return findChildByClass(ZincStmt.class);
  }

}
