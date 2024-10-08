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

public class AngelScriptVarImpl extends ASTWrapperPsiElement implements AngelScriptVar {

  public AngelScriptVarImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitVar(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<AngelScriptArgList> getArgListList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptArgList.class);
  }

  @Override
  @NotNull
  public List<AngelScriptExpr> getExprList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptExpr.class);
  }

  @Override
  @NotNull
  public List<AngelScriptInitList> getInitListList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptInitList.class);
  }

  @Override
  @NotNull
  public AngelScriptType getType() {
    return findNotNullChildByClass(AngelScriptType.class);
  }

  @Override
  @Nullable
  public PsiElement getPrivate() {
    return findChildByType(PRIVATE);
  }

  @Override
  @Nullable
  public PsiElement getProtected() {
    return findChildByType(PROTECTED);
  }

  @Override
  @NotNull
  public PsiElement getSemi() {
    return findNotNullChildByType(SEMI);
  }

}
