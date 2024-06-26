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

public class VjassStmtImpl extends ASTWrapperPsiElement implements VjassStmt {

  public VjassStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull VjassVisitor visitor) {
    visitor.visitStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof VjassVisitor) accept((VjassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public VjassCallSetStmt getCallSetStmt() {
    return findChildByClass(VjassCallSetStmt.class);
  }

  @Override
  @Nullable
  public VjassExitWhenStmt getExitWhenStmt() {
    return findChildByClass(VjassExitWhenStmt.class);
  }

  @Override
  @Nullable
  public VjassIfStmt getIfStmt() {
    return findChildByClass(VjassIfStmt.class);
  }

  @Override
  @Nullable
  public VjassLVarStmt getLVarStmt() {
    return findChildByClass(VjassLVarStmt.class);
  }

  @Override
  @Nullable
  public VjassLoopStmt getLoopStmt() {
    return findChildByClass(VjassLoopStmt.class);
  }

  @Override
  @Nullable
  public VjassReturnStmt getReturnStmt() {
    return findChildByClass(VjassReturnStmt.class);
  }

}
