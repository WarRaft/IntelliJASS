// This is a generated file. Not intended for manual editing.
package guru.xgm.language.vjass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.language.vjass.psi.VjassTypes.*;
import guru.xgm.language.vjass.psi.*;

public class VjassPrimaryExprImpl extends VjassExprImpl implements VjassPrimaryExpr {

  public VjassPrimaryExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull VjassVisitor visitor) {
    visitor.visitPrimaryExpr(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof VjassVisitor) accept((VjassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public VjassArrayAccess getArrayAccess() {
    return findChildByClass(VjassArrayAccess.class);
  }

  @Override
  @Nullable
  public VjassFuncAsCode getFuncAsCode() {
    return findChildByClass(VjassFuncAsCode.class);
  }

  @Override
  @Nullable
  public VjassFuncCall getFuncCall() {
    return findChildByClass(VjassFuncCall.class);
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
  public PsiElement getStrval() {
    return findChildByType(STRVAL);
  }

}
