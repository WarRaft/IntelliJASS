// This is a generated file. Not intended for manual editing.
package guru.xgm.vjass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.vjass.psi.VjassTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.vjass.psi.*;

public class VjassLibImpl extends ASTWrapperPsiElement implements VjassLib {

  public VjassLibImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull VjassVisitor visitor) {
    visitor.visitLib(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof VjassVisitor) accept((VjassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<VjassFun> getFunList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, VjassFun.class);
  }

  @Override
  @NotNull
  public List<VjassGlob> getGlobList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, VjassGlob.class);
  }

  @Override
  @NotNull
  public List<VjassHookDef> getHookDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, VjassHookDef.class);
  }

  @Override
  @Nullable
  public VjassLibReq getLibReq() {
    return findChildByClass(VjassLibReq.class);
  }

  @Override
  @NotNull
  public List<VjassModuleDef> getModuleDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, VjassModuleDef.class);
  }

  @Override
  @NotNull
  public List<VjassStructDef> getStructDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, VjassStructDef.class);
  }

}
