// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.jass.psi.JassTypes.*;
import raft.war.language.jass.psi.*;

public class JassGtExprImpl extends JassExprImpl implements JassGtExpr {

  public JassGtExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitGtExpr(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<JassExpr> getExprList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, JassExpr.class);
  }

  @Override
  @NotNull
  public PsiElement getGt() {
    return findNotNullChildByType(GT);
  }

}
