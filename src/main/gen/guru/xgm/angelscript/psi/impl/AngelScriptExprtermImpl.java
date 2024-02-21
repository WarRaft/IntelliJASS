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

public class AngelScriptExprtermImpl extends ASTWrapperPsiElement implements AngelScriptExprterm {

  public AngelScriptExprtermImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitExprterm(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<AngelScriptExprpostop> getExprpostopList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptExprpostop.class);
  }

  @Override
  @NotNull
  public List<AngelScriptExprpreop> getExprpreopList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptExprpreop.class);
  }

  @Override
  @Nullable
  public AngelScriptExprvalue getExprvalue() {
    return findChildByClass(AngelScriptExprvalue.class);
  }

  @Override
  @Nullable
  public AngelScriptInitlist getInitlist() {
    return findChildByClass(AngelScriptInitlist.class);
  }

  @Override
  @Nullable
  public AngelScriptType getType() {
    return findChildByClass(AngelScriptType.class);
  }

}
