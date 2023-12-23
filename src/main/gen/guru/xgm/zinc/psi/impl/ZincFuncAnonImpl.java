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

public class ZincFuncAnonImpl extends ASTWrapperPsiElement implements ZincFuncAnon {

  public ZincFuncAnonImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitFuncAnon(this);
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
