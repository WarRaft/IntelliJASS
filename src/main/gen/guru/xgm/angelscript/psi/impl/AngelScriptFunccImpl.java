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

public class AngelScriptFunccImpl extends ASTWrapperPsiElement implements AngelScriptFuncc {

  public AngelScriptFunccImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitFuncc(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public AngelScriptFuncattr getFuncattr() {
    return findNotNullChildByClass(AngelScriptFuncattr.class);
  }

  @Override
  @NotNull
  public AngelScriptIdentifier getIdentifier() {
    return findNotNullChildByClass(AngelScriptIdentifier.class);
  }

  @Override
  @NotNull
  public AngelScriptParamlist getParamlist() {
    return findNotNullChildByClass(AngelScriptParamlist.class);
  }

  @Override
  @Nullable
  public AngelScriptStatblock getStatblock() {
    return findChildByClass(AngelScriptStatblock.class);
  }

}
