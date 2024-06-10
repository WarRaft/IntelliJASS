// This is a generated file. Not intended for manual editing.
package raft.war.language.zinc.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.zinc.psi.ZincTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import raft.war.language.zinc.psi.*;

public class ZincArgImpl extends ASTWrapperPsiElement implements ZincArg {

  public ZincArgImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitArg(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public ZincExpr getExpr() {
    return findChildByClass(ZincExpr.class);
  }

  @Override
  @Nullable
  public ZincFuncAsCode getFuncAsCode() {
    return findChildByClass(ZincFuncAsCode.class);
  }

  @Override
  @Nullable
  public ZincLambda getLambda() {
    return findChildByClass(ZincLambda.class);
  }

}
