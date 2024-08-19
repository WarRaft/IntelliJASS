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

public class AngelScriptClazzItemImpl extends ASTWrapperPsiElement implements AngelScriptClazzItem {

  public AngelScriptClazzItemImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitClazzItem(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<AngelScriptConstructor> getConstructorList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptConstructor.class);
  }

  @Override
  @NotNull
  public List<AngelScriptFun> getFunList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptFun.class);
  }

  @Override
  @NotNull
  public List<AngelScriptFunDef> getFunDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptFunDef.class);
  }

  @Override
  @NotNull
  public List<AngelScriptVar> getVarList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptVar.class);
  }

  @Override
  @NotNull
  public List<AngelScriptVirtProp> getVirtPropList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptVirtProp.class);
  }

}
