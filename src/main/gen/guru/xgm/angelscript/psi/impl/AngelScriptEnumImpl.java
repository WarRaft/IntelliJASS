// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.angelscript.psi.AngelScriptElementTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.angelscript.psi.*;

public class AngelScriptEnumImpl extends ASTWrapperPsiElement implements AngelScriptEnum {

  public AngelScriptEnumImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitEnum(this);
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
  public List<AngelScriptIdentifier> getIdentifierList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptIdentifier.class);
  }

}
