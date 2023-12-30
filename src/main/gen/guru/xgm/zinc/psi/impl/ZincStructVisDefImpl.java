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

public class ZincStructVisDefImpl extends ASTWrapperPsiElement implements ZincStructVisDef {

  public ZincStructVisDefImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitStructVisDef(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public ZincStructBody getStructBody() {
    return findChildByClass(ZincStructBody.class);
  }

  @Override
  @Nullable
  public ZincStructItem getStructItem() {
    return findChildByClass(ZincStructItem.class);
  }

  @Override
  @NotNull
  public ZincVisibilityDef getVisibilityDef() {
    return findNotNullChildByClass(ZincVisibilityDef.class);
  }

}
