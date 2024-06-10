// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.angelscript.psi.AngelScriptTypes.*;
import raft.war.language.angelscript.psi.*;

public class AngelScriptPrimExprImpl extends AngelScriptExprImpl implements AngelScriptPrimExpr {

  public AngelScriptPrimExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitPrimExpr(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public AngelScriptArrayAccess getArrayAccess() {
    return findChildByClass(AngelScriptArrayAccess.class);
  }

  @Override
  @Nullable
  public AngelScriptFuncCall getFuncCall() {
    return findChildByClass(AngelScriptFuncCall.class);
  }

  @Override
  @Nullable
  public AngelScriptLambda getLambda() {
    return findChildByClass(AngelScriptLambda.class);
  }

  @Override
  @Nullable
  public AngelScriptStr getStr() {
    return findChildByClass(AngelScriptStr.class);
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

}
