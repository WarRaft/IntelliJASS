// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.angelscript.psi.AngelScriptTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.angelscript.psi.*;

public class AngelScriptLibVisDefImpl extends ASTWrapperPsiElement implements AngelScriptLibVisDef {

  public AngelScriptLibVisDefImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitLibVisDef(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<AngelScriptFuncDef> getFuncDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptFuncDef.class);
  }

  @Override
  @NotNull
  public List<AngelScriptLibVisDef> getLibVisDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptLibVisDef.class);
  }

  @Override
  @NotNull
  public List<AngelScriptStructDef> getStructDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptStructDef.class);
  }

  @Override
  @NotNull
  public List<AngelScriptVarDef> getVarDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptVarDef.class);
  }

  @Override
  @NotNull
  public AngelScriptVis getVis() {
    return findNotNullChildByClass(AngelScriptVis.class);
  }

}
