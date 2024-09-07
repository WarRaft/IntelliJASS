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

public class JassPrimExprImpl extends JassExprImpl implements JassPrimExpr {

  public JassPrimExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitPrimExpr(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public JassArrayAccess getArrayAccess() {
    return PsiTreeUtil.getChildOfType(this, JassArrayAccess.class);
  }

  @Override
  @Nullable
  public JassFunCall getFunCall() {
    return PsiTreeUtil.getChildOfType(this, JassFunCall.class);
  }

  @Override
  @Nullable
  public JassFunRef getFunRef() {
    return PsiTreeUtil.getChildOfType(this, JassFunRef.class);
  }

  @Override
  @Nullable
  public JassNum getNum() {
    return PsiTreeUtil.getChildOfType(this, JassNum.class);
  }

  @Override
  @Nullable
  public JassStr getStr() {
    return PsiTreeUtil.getChildOfType(this, JassStr.class);
  }

  @Override
  @Nullable
  public JassVarName getVarName() {
    return PsiTreeUtil.getChildOfType(this, JassVarName.class);
  }

  @Override
  @Nullable
  public PsiElement getFalse() {
    return findChildByType(FALSE);
  }

  @Override
  @Nullable
  public PsiElement getNull() {
    return findChildByType(NULL);
  }

  @Override
  @Nullable
  public PsiElement getTrue() {
    return findChildByType(TRUE);
  }

}
