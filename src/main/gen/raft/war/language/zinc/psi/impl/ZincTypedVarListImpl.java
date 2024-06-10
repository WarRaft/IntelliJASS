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

public class ZincTypedVarListImpl extends ASTWrapperPsiElement implements ZincTypedVarList {

  public ZincTypedVarListImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitTypedVarList(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<ZincTypedVar> getTypedVarList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincTypedVar.class);
  }

}
