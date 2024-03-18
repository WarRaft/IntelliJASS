// This is a generated file. Not intended for manual editing.
package guru.xgm.language.lni.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.language.lni.psi.LniTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.language.lni.psi.*;

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
  @NotNull
  public LniHead getHead() {
    return findNotNullChildByClass(LniHead.class);
  }

  @Override
  @NotNull
  public List<LniProperty> getPropertyList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, LniProperty.class);
  }

}
