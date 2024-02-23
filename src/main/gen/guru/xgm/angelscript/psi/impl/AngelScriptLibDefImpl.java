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

public class AngelScriptLibDefImpl extends ASTWrapperPsiElement implements AngelScriptLibDef {

  public AngelScriptLibDefImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitLibDef(this);
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
  @Nullable
  public AngelScriptLibReq getLibReq() {
    return findChildByClass(AngelScriptLibReq.class);
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
  @Nullable
  public PsiElement getId() {
    return findChildByType(ID);
  }

}
