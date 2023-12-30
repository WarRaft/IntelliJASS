// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.jass.psi.JassTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.jass.psi.*;

public class JassNativeDefImpl extends ASTWrapperPsiElement implements JassNativeDef {

  public JassNativeDefImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitNativeDef(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public JassFuncDefName getFuncDefName() {
    return findChildByClass(JassFuncDefName.class);
  }

  @Override
  @Nullable
  public JassFuncReturns getFuncReturns() {
    return findChildByClass(JassFuncReturns.class);
  }

  @Override
  @Nullable
  public JassFuncTakes getFuncTakes() {
    return findChildByClass(JassFuncTakes.class);
  }

}
