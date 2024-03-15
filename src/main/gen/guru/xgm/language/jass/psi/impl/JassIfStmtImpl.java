// This is a generated file. Not intended for manual editing.
package guru.xgm.language.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.language.jass.psi.JassTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.language.jass.psi.*;

public class JassIfStmtImpl extends ASTWrapperPsiElement implements JassIfStmt {

  public JassIfStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitIfStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<JassElseIfStmt> getElseIfStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, JassElseIfStmt.class);
  }

  @Override
  @NotNull
  public List<JassElseStmt> getElseStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, JassElseStmt.class);
  }

  @Override
  @Nullable
  public JassExpr getExpr() {
    return findChildByClass(JassExpr.class);
  }

  @Override
  @NotNull
  public List<JassStmt> getStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, JassStmt.class);
  }

  @Override
  @Nullable
  public PsiElement getEndif() {
    return findChildByType(ENDIF);
  }

  @Override
  @NotNull
  public PsiElement getIf() {
    return findNotNullChildByType(IF);
  }

  @Override
  @Nullable
  public PsiElement getThen() {
    return findChildByType(THEN);
  }

}
