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

public class ZincLibItemImpl extends ASTWrapperPsiElement implements ZincLibItem {

  public ZincLibItemImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitLibItem(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public ZincFuncDef getFuncDef() {
    return findChildByClass(ZincFuncDef.class);
  }

  @Override
  @Nullable
  public ZincGvarDef getGvarDef() {
    return findChildByClass(ZincGvarDef.class);
  }

  @Override
  @Nullable
  public ZincLibVisDef getLibVisDef() {
    return findChildByClass(ZincLibVisDef.class);
  }

  @Override
  @Nullable
  public ZincStructDef getStructDef() {
    return findChildByClass(ZincStructDef.class);
  }

}
