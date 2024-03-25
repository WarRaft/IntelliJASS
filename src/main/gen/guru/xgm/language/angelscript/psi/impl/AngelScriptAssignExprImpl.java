// This is a generated file. Not intended for manual editing.
package guru.xgm.language.angelscript.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;
import guru.xgm.language.angelscript.psi.*;

public class AngelScriptAssignExprImpl extends AngelScriptExprImpl implements AngelScriptAssignExpr {

  public AngelScriptAssignExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitAssignExpr(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public AngelScriptAssignOp getAssignOp() {
    return findNotNullChildByClass(AngelScriptAssignOp.class);
  }

  @Override
  @NotNull
  public List<AngelScriptExpr> getExprList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptExpr.class);
  }

}
