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

public class AngelScriptFuncImpl extends ASTWrapperPsiElement implements AngelScriptFunc {

  public AngelScriptFuncImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitFunc(this);
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