// This is a generated file. Not intended for manual editing.
package guru.xgm.language.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.language.jass.psi.JassTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.language.jass.psi.*;

public class JassStmtImpl extends ASTWrapperPsiElement implements JassStmt {

  public JassStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public JassCallStmt getCallStmt() {
    return findChildByClass(JassCallStmt.class);
  }

  @Override
  @Nullable
  public JassExitWhenStmt getExitWhenStmt() {
    return findChildByClass(JassExitWhenStmt.class);
  }

  @Override
  @Nullable
  public JassIfStmt getIfStmt() {
    return findChildByClass(JassIfStmt.class);
  }

  @Override
  @Nullable
  public JassLoopStmt getLoopStmt() {
    return findChildByClass(JassLoopStmt.class);
  }

  @Override
  @Nullable
  public JassLvarStmt getLvarStmt() {
    return findChildByClass(JassLvarStmt.class);
  }

  @Override
  @Nullable
  public JassReturnStmt getReturnStmt() {
    return findChildByClass(JassReturnStmt.class);
  }

  @Override
  @Nullable
  public JassSetStmt getSetStmt() {
    return findChildByClass(JassSetStmt.class);
  }

}
