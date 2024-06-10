// This is a generated file. Not intended for manual editing.
package raft.war.language.vjass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.vjass.psi.VjassTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import raft.war.language.vjass.psi.*;

public class VjassCallSetIdImpl extends ASTWrapperPsiElement implements VjassCallSetId {

  public VjassCallSetIdImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull VjassVisitor visitor) {
    visitor.visitCallSetId(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof VjassVisitor) accept((VjassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public VjassArrayAccess getArrayAccess() {
    return findChildByClass(VjassArrayAccess.class);
  }

  @Override
  @Nullable
  public VjassFuncCall getFuncCall() {
    return findChildByClass(VjassFuncCall.class);
  }

  @Override
  @Nullable
  public PsiElement getId() {
    return findChildByType(ID);
  }

}
