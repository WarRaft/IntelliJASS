// This is a generated file. Not intended for manual editing.
package guru.xgm.language.angelscript.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.language.angelscript.psi.*;

public class AngelScriptFunImpl extends ASTWrapperPsiElement implements AngelScriptFun {

  public AngelScriptFunImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitFun(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public AngelScriptFuncAttr getFuncAttr() {
    return findNotNullChildByClass(AngelScriptFuncAttr.class);
  }

  @Override
  @NotNull
  public AngelScriptParamList getParamList() {
    return findNotNullChildByClass(AngelScriptParamList.class);
  }

  @Override
  @Nullable
  public AngelScriptStatBlock getStatBlock() {
    return findChildByClass(AngelScriptStatBlock.class);
  }

  @Override
  @Nullable
  public AngelScriptType getType() {
    return findChildByClass(AngelScriptType.class);
  }

  @Override
  @NotNull
  public PsiElement getId() {
    return findNotNullChildByType(ID);
  }

}
