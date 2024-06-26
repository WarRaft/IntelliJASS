// This is a generated file. Not intended for manual editing.
package raft.war.language.lni.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.lni.psi.LniTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import raft.war.language.lni.psi.*;

public class LniItemImpl extends ASTWrapperPsiElement implements LniItem {

  public LniItemImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull LniVisitor visitor) {
    visitor.visitItem(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof LniVisitor) accept((LniVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public LniHead getHead() {
    return findChildByClass(LniHead.class);
  }

  @Override
  @NotNull
  public List<LniProperty> getPropertyList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, LniProperty.class);
  }

}
