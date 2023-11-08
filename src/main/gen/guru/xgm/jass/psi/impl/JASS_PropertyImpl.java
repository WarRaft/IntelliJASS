// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.jass.psi.Types_JASS.*;
import guru.xgm.jass.extapi.psi.ASTWrapperPsiElement_JASS;
import guru.xgm.jass.psi.*;
import com.intellij.navigation.ItemPresentation;

public class JASS_PropertyImpl extends ASTWrapperPsiElement_JASS implements JASS_Property {

  public JASS_PropertyImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JASS_Visitor visitor) {
    visitor.visitProperty(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JASS_Visitor) accept((JASS_Visitor)visitor);
    else super.accept(visitor);
  }

  @Override
  public String getKey() {
    return PsiImplUtil_JASS.getKey(this);
  }

  @Override
  public String getValue() {
    return PsiImplUtil_JASS.getValue(this);
  }

  @Override
  public String getName() {
    return PsiImplUtil_JASS.getName(this);
  }

  @Override
  public PsiElement setName(String newName) {
    return PsiImplUtil_JASS.setName(this, newName);
  }

  @Override
  public PsiElement getNameIdentifier() {
    return PsiImplUtil_JASS.getNameIdentifier(this);
  }

  @Override
  public ItemPresentation getPresentation() {
    return PsiImplUtil_JASS.getPresentation(this);
  }

}
