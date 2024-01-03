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

public class ZincBracedStmtImpl extends ASTWrapperPsiElement implements ZincBracedStmt {

  public ZincBracedStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitBracedStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<ZincBreakStmt> getBreakStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincBreakStmt.class);
  }

  @Override
  @NotNull
  public List<ZincCallSetStmt> getCallSetStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincCallSetStmt.class);
  }

  @Override
  @NotNull
  public List<ZincDoStmt> getDoStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincDoStmt.class);
  }

  @Override
  @NotNull
  public List<ZincForStmt> getForStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincForStmt.class);
  }

  @Override
  @NotNull
  public List<ZincIfStmt> getIfStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincIfStmt.class);
  }

  @Override
  @NotNull
  public List<ZincLvarStmt> getLvarStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincLvarStmt.class);
  }

  @Override
  @NotNull
  public List<ZincReturnStmt> getReturnStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincReturnStmt.class);
  }

  @Override
  @NotNull
  public List<ZincWhileStmt> getWhileStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincWhileStmt.class);
  }

}
