// This is a generated file. Not intended for manual editing.
package guru.xgm.language.zinc.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.language.zinc.psi.ZincTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.language.zinc.psi.*;

public class ZincStructStatImpl extends ASTWrapperPsiElement implements ZincStructStat {

  public ZincStructStatImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZincVisitor visitor) {
    visitor.visitStructStat(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZincVisitor) accept((ZincVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<ZincMethodDef> getMethodDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincMethodDef.class);
  }

  @Override
  @NotNull
  public List<ZincStructStat> getStructStatList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincStructStat.class);
  }

  @Override
  @NotNull
  public List<ZincStructVis> getStructVisList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincStructVis.class);
  }

  @Override
  @NotNull
  public List<ZincVarDef> getVarDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, ZincVarDef.class);
  }

}
