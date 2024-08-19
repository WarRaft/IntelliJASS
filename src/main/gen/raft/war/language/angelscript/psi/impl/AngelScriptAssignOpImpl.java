// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.angelscript.psi.AngelScriptTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import raft.war.language.angelscript.psi.*;

public class AngelScriptAssignOpImpl extends ASTWrapperPsiElement implements AngelScriptAssignOp {

  public AngelScriptAssignOpImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitAssignOp(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public PsiElement getAmpEq() {
    return findChildByType(AMP_EQ);
  }

  @Override
  @Nullable
  public PsiElement getCarEq() {
    return findChildByType(CAR_EQ);
  }

  @Override
  @Nullable
  public PsiElement getDivEq() {
    return findChildByType(DIV_EQ);
  }

  @Override
  @Nullable
  public PsiElement getEq() {
    return findChildByType(EQ);
  }

  @Override
  @Nullable
  public PsiElement getGtGtEq() {
    return findChildByType(GT_GT_EQ);
  }

  @Override
  @Nullable
  public PsiElement getGtGtGtEq() {
    return findChildByType(GT_GT_GT_EQ);
  }

  @Override
  @Nullable
  public PsiElement getLtLtEq() {
    return findChildByType(LT_LT_EQ);
  }

  @Override
  @Nullable
  public PsiElement getMinusEq() {
    return findChildByType(MINUS_EQ);
  }

  @Override
  @Nullable
  public PsiElement getMulEq() {
    return findChildByType(MUL_EQ);
  }

  @Override
  @Nullable
  public PsiElement getMulMulEq() {
    return findChildByType(MUL_MUL_EQ);
  }

  @Override
  @Nullable
  public PsiElement getPercentEq() {
    return findChildByType(PERCENT_EQ);
  }

  @Override
  @Nullable
  public PsiElement getPlusEq() {
    return findChildByType(PLUS_EQ);
  }

  @Override
  @Nullable
  public PsiElement getVbarEq() {
    return findChildByType(VBAR_EQ);
  }

}
