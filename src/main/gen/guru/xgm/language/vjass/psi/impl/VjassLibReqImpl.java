// This is a generated file. Not intended for manual editing.
package guru.xgm.language.vjass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.language.vjass.psi.VjassTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.language.vjass.psi.*;

public class VjassLibReqImpl extends ASTWrapperPsiElement implements VjassLibReq {

  public VjassLibReqImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull VjassVisitor visitor) {
    visitor.visitLibReq(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof VjassVisitor) accept((VjassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<VjassLibReqItem> getLibReqItemList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, VjassLibReqItem.class);
  }

}
