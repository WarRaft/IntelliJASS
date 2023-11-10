// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.jass.psi.TypesJASS.*;
import guru.xgm.jass.psi.*;

public class JASSConditionalExpressionImpl extends JASSExpressionImpl implements JASSConditionalExpression {

  public JASSConditionalExpressionImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull JASSVisitor visitor) {
    visitor.visitConditionalExpression(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JASSVisitor) accept((JASSVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<JASSExpression> getExpressionList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, JASSExpression.class);
  }

}
