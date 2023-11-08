// This is a generated file. Not intended for manual editing.
package guru.xgm.jgas.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.jgas.psi.Types_JGAS.*;
import guru.xgm.jgas.extapi.psi.ASTWrapperPsiElement_JGAS;
import guru.xgm.jgas.psi.*;
import com.intellij.navigation.ItemPresentation;

public class JGAS_PropertyImpl extends ASTWrapperPsiElement_JGAS implements JGAS_Property {

  public JGAS_PropertyImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JGAS_Visitor visitor) {
    visitor.visitProperty(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JGAS_Visitor) accept((JGAS_Visitor)visitor);
    else super.accept(visitor);
  }

  @Override
  public String getKey() {
    return PsiImplUtil_JGAS.getKey(this);
  }

  @Override
  public String getValue() {
    return PsiImplUtil_JGAS.getValue(this);
  }

  @Override
  public String getName() {
    return PsiImplUtil_JGAS.getName(this);
  }

  @Override
  public PsiElement setName(String newName) {
    return PsiImplUtil_JGAS.setName(this, newName);
  }

  @Override
  public PsiElement getNameIdentifier() {
    return PsiImplUtil_JGAS.getNameIdentifier(this);
  }

  @Override
  public ItemPresentation getPresentation() {
    return PsiImplUtil_JGAS.getPresentation(this);
  }

}
