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

public class AngelScriptTypeImpl extends ASTWrapperPsiElement implements AngelScriptType {

  public AngelScriptTypeImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitType(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public AngelScriptGenericType getGenericType() {
    return findChildByClass(AngelScriptGenericType.class);
  }

  @Override
  @Nullable
  public AngelScriptPrimType getPrimType() {
    return findChildByClass(AngelScriptPrimType.class);
  }

  @Override
  @NotNull
  public AngelScriptScope getScope() {
    return findNotNullChildByClass(AngelScriptScope.class);
  }

  @Override
  @Nullable
  public PsiElement getAuto() {
    return findChildByType(AUTO);
  }

  @Override
  @Nullable
  public PsiElement getId() {
    return findChildByType(ID);
  }

  @Override
  @Nullable
  public PsiElement getQuest() {
    return findChildByType(QUEST);
  }

}
