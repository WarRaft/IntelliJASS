// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.angelscript.psi.AngelScriptTypes.*;
import raft.war.language.angelscript.psi.*;

public class AngelScriptBOrExprImpl extends AngelScriptExprImpl implements AngelScriptBOrExpr {

  public AngelScriptBOrExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  @Override
  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitBOrExpr(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<AngelScriptExpr> getExprList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptExpr.class);
  }

  @Override
  @NotNull
  public PsiElement getVbar() {
    return findNotNullChildByType(VBAR);
  }

}
