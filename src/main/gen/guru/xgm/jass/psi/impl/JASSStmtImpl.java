// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.jass.psi.TypesJASS.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.jass.psi.*;

public class JASSStmtImpl extends ASTWrapperPsiElement implements JASSStmt {

  public JASSStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JASSVisitor visitor) {
    visitor.visitStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JASSVisitor) accept((JASSVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public JASSCallStmt getCallStmt() {
    return findChildByClass(JASSCallStmt.class);
  }

  @Override
  @Nullable
  public JASSExitWhenStmt getExitWhenStmt() {
    return findChildByClass(JASSExitWhenStmt.class);
  }

  @Override
  @Nullable
  public JASSIfStmt getIfStmt() {
    return findChildByClass(JASSIfStmt.class);
  }

  @Override
  @Nullable
  public JASSLocalVarStmt getLocalVarStmt() {
    return findChildByClass(JASSLocalVarStmt.class);
  }

  @Override
  @Nullable
  public JASSLoopStmt getLoopStmt() {
    return findChildByClass(JASSLoopStmt.class);
  }

  @Override
  @Nullable
  public JASSReturnStmt getReturnStmt() {
    return findChildByClass(JASSReturnStmt.class);
  }

  @Override
  @Nullable
  public JASSSetStmt getSetStmt() {
    return findChildByClass(JASSSetStmt.class);
  }

}
