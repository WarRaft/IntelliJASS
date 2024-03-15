// This is a generated file. Not intended for manual editing.
package guru.xgm.language.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.language.jass.psi.JassTypes.*;
import guru.xgm.language.jass.psi.*;

public class JassMulExprImpl extends JassExprImpl implements JassMulExpr {

  public JassMulExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitMulExpr(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<JassExpr> getExprList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, JassExpr.class);
  }

  @Override
  @NotNull
  public PsiElement getMul() {
    return findNotNullChildByType(MUL);
  }

}
