// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.jass.psi.JassTypes.*;
import guru.xgm.jass.psi.*;

public class JassNotExprImpl extends JassExprImpl implements JassNotExpr {

  public JassNotExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitNotExpr(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public JassExpr getExpr() {
    return findChildByClass(JassExpr.class);
  }

}
