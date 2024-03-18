// This is a generated file. Not intended for manual editing.
package guru.xgm.language.lni.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.language.lni.psi.LniTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.language.lni.psi.*;

public class LniPropertyImpl extends ASTWrapperPsiElement implements LniProperty {

  public LniPropertyImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull LniVisitor visitor) {
    visitor.visitProperty(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof LniVisitor) accept((LniVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public LniList getList() {
    return findChildByClass(LniList.class);
  }

  @Override
  @Nullable
  public LniPrim getPrim() {
    return findChildByClass(LniPrim.class);
  }

  @Override
  @NotNull
  public PsiElement getId() {
    return findNotNullChildByType(ID);
  }

}
