// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.angelscript.psi.AngelScriptTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import raft.war.language.angelscript.psi.*;

public class AngelScriptEnumItemImpl extends ASTWrapperPsiElement implements AngelScriptEnumItem {

  public AngelScriptEnumItemImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitEnumItem(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public AngelScriptExpr getExpr() {
    return findChildByClass(AngelScriptExpr.class);
  }

  @Override
  @Nullable
  public PsiElement getEq() {
    return findChildByType(EQ);
  }

  @Override
  @NotNull
  public PsiElement getId() {
    return findNotNullChildByType(ID);
  }

}
