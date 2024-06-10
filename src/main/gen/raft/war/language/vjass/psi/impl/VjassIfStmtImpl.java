// This is a generated file. Not intended for manual editing.
package raft.war.language.vjass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.vjass.psi.VjassTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import raft.war.language.vjass.psi.*;

public class VjassIfStmtImpl extends ASTWrapperPsiElement implements VjassIfStmt {

  public VjassIfStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull VjassVisitor visitor) {
    visitor.visitIfStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof VjassVisitor) accept((VjassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<VjassElseIfStmt> getElseIfStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, VjassElseIfStmt.class);
  }

  @Override
  @NotNull
  public List<VjassElseStmt> getElseStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, VjassElseStmt.class);
  }

  @Override
  @Nullable
  public VjassExpr getExpr() {
    return findChildByClass(VjassExpr.class);
  }

  @Override
  @NotNull
  public List<VjassStmt> getStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, VjassStmt.class);
  }

}
