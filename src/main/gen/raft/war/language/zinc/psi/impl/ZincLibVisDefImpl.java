// This is a generated file. Not intended for manual editing.
package raft.war.language.zinc.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.zinc.psi.ZincTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import raft.war.language.zinc.psi.*;

public class ZincLibVisDefImpl extends ASTWrapperPsiElement implements ZincLibVisDef {

  public ZincLibVisDefImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitLibVisDef(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<ZincFuncDef> getFuncDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincFuncDef.class);
  }

  @Override
  @NotNull
  public List<ZincLibVisDef> getLibVisDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincLibVisDef.class);
  }

  @Override
  @NotNull
  public List<ZincStructDef> getStructDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincStructDef.class);
  }

  @Override
  @NotNull
  public List<ZincVarDef> getVarDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincVarDef.class);
  }

  @Override
  @NotNull
  public ZincVis getVis() {
    return findNotNullChildByClass(ZincVis.class);
  }

}
