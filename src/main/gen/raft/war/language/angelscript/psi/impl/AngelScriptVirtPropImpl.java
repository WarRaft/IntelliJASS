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

public class AngelScriptVirtPropImpl extends ASTWrapperPsiElement implements AngelScriptVirtProp {

  public AngelScriptVirtPropImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitVirtProp(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<AngelScriptFunAttr> getFunAttrList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptFunAttr.class);
  }

  @Override
  @NotNull
  public List<AngelScriptStmtBracer> getStmtBracerList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptStmtBracer.class);
  }

  @Override
  @NotNull
  public AngelScriptType getType() {
    return findNotNullChildByClass(AngelScriptType.class);
  }

  @Override
  @Nullable
  public PsiElement getAmp() {
    return findChildByType(AMP);
  }

  @Override
  @NotNull
  public PsiElement getId() {
    return findNotNullChildByType(ID);
  }

  @Override
  @NotNull
  public PsiElement getLbrace() {
    return findNotNullChildByType(LBRACE);
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
  public PsiElement getRbrace() {
    return findNotNullChildByType(RBRACE);
  }

}
