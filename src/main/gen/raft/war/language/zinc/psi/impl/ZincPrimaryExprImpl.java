// This is a generated file. Not intended for manual editing.
package raft.war.language.zinc.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.zinc.psi.ZincTypes.*;
import raft.war.language.zinc.psi.*;

public class ZincPrimaryExprImpl extends ZincExprImpl implements ZincPrimaryExpr {

  public ZincPrimaryExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitPrimaryExpr(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public ZincArrayAccess getArrayAccess() {
    return findChildByClass(ZincArrayAccess.class);
  }

  @Override
  @Nullable
  public ZincFuncAsCode getFuncAsCode() {
    return findChildByClass(ZincFuncAsCode.class);
  }

  @Override
  @Nullable
  public PsiElement getHexval() {
    return findChildByType(HEXVAL);
  }

  @Override
  @Nullable
  public PsiElement getId() {
    return findChildByType(ID);
  }

  @Override
  @Nullable
  public PsiElement getIntval() {
    return findChildByType(INTVAL);
  }

  @Override
  @Nullable
  public PsiElement getRawval() {
    return findChildByType(RAWVAL);
  }

  @Override
  @Nullable
  public PsiElement getRealval() {
    return findChildByType(REALVAL);
  }

  @Override
  @Nullable
  public PsiElement getStrval() {
    return findChildByType(STRVAL);
  }

}
