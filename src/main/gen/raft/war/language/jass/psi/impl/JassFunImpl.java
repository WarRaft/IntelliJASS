// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.jass.psi.JassTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import raft.war.language.jass.psi.*;

public class JassFunImpl extends ASTWrapperPsiElement implements JassFun {

  public JassFunImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitFun(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public JassFunBody getFunBody() {
    return notNullChild(PsiTreeUtil.getChildOfType(this, JassFunBody.class));
  }

  @Override
  @NotNull
  public JassFunHead getFunHead() {
    return notNullChild(PsiTreeUtil.getChildOfType(this, JassFunHead.class));
  }

  @Override
  @NotNull
  public PsiElement getEndfunction() {
    return notNullChild(findChildByType(ENDFUNCTION));
  }

}
