// This is a generated file. Not intended for manual editing.
package guru.xgm.vjass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.vjass.psi.VjassTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.vjass.psi.*;

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
  public VjassCallStmt getCallStmt() {
    return findChildByClass(VjassCallStmt.class);
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
  public VjassLocalVarStmt getLocalVarStmt() {
    return findChildByClass(VjassLocalVarStmt.class);
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

  @Override
  @Nullable
  public VjassSetStmt getSetStmt() {
    return findChildByClass(VjassSetStmt.class);
  }

}
