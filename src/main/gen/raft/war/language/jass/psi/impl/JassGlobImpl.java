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

public class JassGlobImpl extends ASTWrapperPsiElement implements JassGlob {

  public JassGlobImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitGlob(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<JassGvar> getGvarList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, JassGvar.class);
  }

  @Override
  @Nullable
  public PsiElement getEndglobals() {
    return findChildByType(ENDGLOBALS);
  }

  @Override
  @NotNull
  public PsiElement getGlobals() {
    return findNotNullChildByType(GLOBALS);
  }

}
