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

public class JassElseIfStmtImpl extends ASTWrapperPsiElement implements JassElseIfStmt {

  public JassElseIfStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitElseIfStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public JassExpr getExpr() {
    return PsiTreeUtil.getChildOfType(this, JassExpr.class);
  }

  @Override
  @Nullable
  public JassFunBody getFunBody() {
    return PsiTreeUtil.getChildOfType(this, JassFunBody.class);
  }

  @Override
  @NotNull
  public PsiElement getElseif() {
    return notNullChild(findChildByType(ELSEIF));
  }

  @Override
  @Nullable
  public PsiElement getThen() {
    return findChildByType(THEN);
  }

}
