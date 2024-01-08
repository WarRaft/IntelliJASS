// This is a generated file. Not intended for manual editing.
package guru.xgm.zinc.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.zinc.psi.ZincTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.zinc.psi.*;

public class ZincVarDefImpl extends ASTWrapperPsiElement implements ZincVarDef {

  public ZincVarDefImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitVarDef(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public ZincTypeName getTypeName() {
    return findNotNullChildByClass(ZincTypeName.class);
  }

  @Override
  @NotNull
  public List<ZincVarBody> getVarBodyList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincVarBody.class);
  }

  @Override
  @Nullable
  public ZincVis getVis() {
    return findChildByClass(ZincVis.class);
  }

}
