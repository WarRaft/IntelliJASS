// This is a generated file. Not intended for manual editing.
package raft.war.language.zinc.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.zinc.psi.ZincTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import raft.war.language.zinc.psi.*;

public class ZincDoStmtImpl extends ASTWrapperPsiElement implements ZincDoStmt {

  public ZincDoStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitDoStmt(this);
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
  public ZincBreakStmt getBreakStmt() {
    return findChildByClass(ZincBreakStmt.class);
  }

  @Override
  @Nullable
  public ZincDoStmt getDoStmt() {
    return findChildByClass(ZincDoStmt.class);
  }

  @Override
  @Nullable
  public ZincExpr getExpr() {
    return findChildByClass(ZincExpr.class);
  }

  @Override
  @Nullable
  public ZincExprStmt getExprStmt() {
    return findChildByClass(ZincExprStmt.class);
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
  public ZincReturnStmt getReturnStmt() {
    return findChildByClass(ZincReturnStmt.class);
  }

  @Override
  @Nullable
  public ZincVarDef getVarDef() {
    return findChildByClass(ZincVarDef.class);
  }

  @Override
  @Nullable
  public ZincWhileStmt getWhileStmt() {
    return findChildByClass(ZincWhileStmt.class);
  }

}
