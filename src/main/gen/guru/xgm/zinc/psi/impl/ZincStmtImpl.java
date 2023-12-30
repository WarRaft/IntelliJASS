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

public class ZincStmtImpl extends ASTWrapperPsiElement implements ZincStmt {

  public ZincStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public ZincBreakStmt getBreakStmt() {
    return findChildByClass(ZincBreakStmt.class);
  }

  @Override
  @Nullable
  public ZincCallStmt getCallStmt() {
    return findChildByClass(ZincCallStmt.class);
  }

  @Override
  @Nullable
  public ZincDoStmt getDoStmt() {
    return findChildByClass(ZincDoStmt.class);
  }

  @Override
  @Nullable
  public ZincForStmt getForStmt() {
    return findChildByClass(ZincForStmt.class);
  }

  @Override
  @Nullable
  public ZincIfStmt getIfStmt() {
    return findChildByClass(ZincIfStmt.class);
  }

  @Override
  @Nullable
  public ZincLvarStmt getLvarStmt() {
    return findChildByClass(ZincLvarStmt.class);
  }

  @Override
  @Nullable
  public ZincReturnStmt getReturnStmt() {
    return findChildByClass(ZincReturnStmt.class);
  }

  @Override
  @Nullable
  public ZincSetStmt getSetStmt() {
    return findChildByClass(ZincSetStmt.class);
  }

  @Override
  @Nullable
  public ZincWhileStmt getWhileStmt() {
    return findChildByClass(ZincWhileStmt.class);
  }

}
