// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.jass.psi.JassTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import raft.war.language.jass.psi.*;

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
    return PsiTreeUtil.getChildOfType(this, JassCallStmt.class);
  }

  @Override
  @Nullable
  public JassExitWhenStmt getExitWhenStmt() {
    return PsiTreeUtil.getChildOfType(this, JassExitWhenStmt.class);
  }

  @Override
  @Nullable
  public JassIfStmt getIfStmt() {
    return PsiTreeUtil.getChildOfType(this, JassIfStmt.class);
  }

  @Override
  @Nullable
  public JassLoopStmt getLoopStmt() {
    return PsiTreeUtil.getChildOfType(this, JassLoopStmt.class);
  }

  @Override
  @Nullable
  public JassReturnStmt getReturnStmt() {
    return PsiTreeUtil.getChildOfType(this, JassReturnStmt.class);
  }

  @Override
  @Nullable
  public JassSetStmt getSetStmt() {
    return PsiTreeUtil.getChildOfType(this, JassSetStmt.class);
  }

  @Override
  @Nullable
  public JassVarDef getVarDef() {
    return PsiTreeUtil.getChildOfType(this, JassVarDef.class);
  }

}
