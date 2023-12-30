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

public class ZincCallStmtImpl extends ASTWrapperPsiElement implements ZincCallStmt {

  public ZincCallStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitCallStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public ZincFuncCall getFuncCall() {
    return findChildByClass(ZincFuncCall.class);
  }

  @Override
  @NotNull
  public List<ZincStructAccess> getStructAccessList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincStructAccess.class);
  }

  @Override
  @Nullable
  public PsiElement getId() {
    return findChildByType(ID);
  }

}
