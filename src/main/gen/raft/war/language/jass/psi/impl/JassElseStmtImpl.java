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

public class JassElseStmtImpl extends ASTWrapperPsiElement implements JassElseStmt {

  public JassElseStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitElseStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<JassStmt> getStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, JassStmt.class);
  }

  @Override
  @NotNull
  public PsiElement getElse() {
    return findNotNullChildByType(ELSE);
  }

}
