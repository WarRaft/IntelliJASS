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

public class ZincFuncDefImpl extends ASTWrapperPsiElement implements ZincFuncDef {

  public ZincFuncDefImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitFuncDef(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public ZincFuncBody getFuncBody() {
    return findChildByClass(ZincFuncBody.class);
  }

  @Override
  @NotNull
  public ZincFuncDefName getFuncDefName() {
    return findNotNullChildByClass(ZincFuncDefName.class);
  }

  @Override
  @Nullable
  public ZincFuncReturns getFuncReturns() {
    return findChildByClass(ZincFuncReturns.class);
  }

  @Override
  @Nullable
  public ZincTypedVarList getTypedVarList() {
    return findChildByClass(ZincTypedVarList.class);
  }

}
