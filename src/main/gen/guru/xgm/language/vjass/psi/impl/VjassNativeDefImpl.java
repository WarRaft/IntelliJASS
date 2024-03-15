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

public class VjassNativeDefImpl extends ASTWrapperPsiElement implements VjassNativeDef {

  public VjassNativeDefImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull VjassVisitor visitor) {
    visitor.visitNativeDef(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof VjassVisitor) accept((VjassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public VjassFuncDefName getFuncDefName() {
    return findChildByClass(VjassFuncDefName.class);
  }

  @Override
  @Nullable
  public VjassFuncReturns getFuncReturns() {
    return findChildByClass(VjassFuncReturns.class);
  }

  @Override
  @Nullable
  public VjassFuncTakes getFuncTakes() {
    return findChildByClass(VjassFuncTakes.class);
  }

}
