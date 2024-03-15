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

public class VjassModuleDefImpl extends ASTWrapperPsiElement implements VjassModuleDef {

  public VjassModuleDefImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull VjassVisitor visitor) {
    visitor.visitModuleDef(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof VjassVisitor) accept((VjassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<VjassMethodDef> getMethodDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, VjassMethodDef.class);
  }

  @Override
  @Nullable
  public VjassVis getVis() {
    return findChildByClass(VjassVis.class);
  }

  @Override
  @Nullable
  public PsiElement getId() {
    return findChildByType(ID);
  }

}
