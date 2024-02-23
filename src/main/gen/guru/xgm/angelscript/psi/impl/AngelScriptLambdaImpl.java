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

public class AngelScriptLambdaImpl extends ASTWrapperPsiElement implements AngelScriptLambda {

  public AngelScriptLambdaImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitLambda(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public AngelScriptFuncBody getFuncBody() {
    return findChildByClass(AngelScriptFuncBody.class);
  }

  @Override
  @Nullable
  public AngelScriptFuncReturns getFuncReturns() {
    return findChildByClass(AngelScriptFuncReturns.class);
  }

  @Override
  @Nullable
  public AngelScriptTypedVarList getTypedVarList() {
    return findChildByClass(AngelScriptTypedVarList.class);
  }

}
