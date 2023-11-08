// This is a generated file. Not intended for manual editing.
package org.intellij.sdk.language.jass.psi;

import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.PsiElement;
import guru.xgm.jass.psi.PsiNameIdentifierOwner_JASS;

public class JassVisitor extends PsiElementVisitor {

  public void visitProperty(@NotNull JassProperty o) {
    visitPsiNameIdentifierOwner_JASS(o);
  }

  public void visitPsiNameIdentifierOwner_JASS(@NotNull PsiNameIdentifierOwner_JASS o) {
    visitElement(o);
  }

  public void visitPsiElement(@NotNull PsiElement o) {
    visitElement(o);
  }

}
