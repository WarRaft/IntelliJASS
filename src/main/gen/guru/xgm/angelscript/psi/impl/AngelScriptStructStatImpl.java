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

public class AngelScriptStructStatImpl extends ASTWrapperPsiElement implements AngelScriptStructStat {

  public AngelScriptStructStatImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitStructStat(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<AngelScriptMethodDef> getMethodDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptMethodDef.class);
  }

  @Override
  @NotNull
  public List<AngelScriptStructStat> getStructStatList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptStructStat.class);
  }

  @Override
  @NotNull
  public List<AngelScriptStructVis> getStructVisList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptStructVis.class);
  }

  @Override
  @NotNull
  public List<AngelScriptVarDef> getVarDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptVarDef.class);
  }

}
