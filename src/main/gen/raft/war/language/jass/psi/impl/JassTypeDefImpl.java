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

public class JassTypeDefImpl extends ASTWrapperPsiElement implements JassTypeDef {

  public JassTypeDefImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitTypeDef(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public JassTypeName getTypeName() {
    return PsiTreeUtil.getChildOfType(this, JassTypeName.class);
  }

  @Override
  @Nullable
  public JassTypeNameBase getTypeNameBase() {
    return PsiTreeUtil.getChildOfType(this, JassTypeNameBase.class);
  }

  @Override
  @Nullable
  public PsiElement getExtends() {
    return findChildByType(EXTENDS);
  }

  @Override
  @NotNull
  public PsiElement getType() {
    return notNullChild(findChildByType(TYPE));
  }

}
