// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.jass.psi.TypesJASS.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.jass.psi.*;

public class JASSStatementImpl extends ASTWrapperPsiElement implements JASSStatement {

  public JASSStatementImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JASSVisitor visitor) {
    visitor.visitStatement(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JASSVisitor) accept((JASSVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public JASSCallStatement getCallStatement() {
    return findChildByClass(JASSCallStatement.class);
  }

  @Override
  @Nullable
  public JASSExitWhenStatement getExitWhenStatement() {
    return findChildByClass(JASSExitWhenStatement.class);
  }

  @Override
  @Nullable
  public JASSIfStatement getIfStatement() {
    return findChildByClass(JASSIfStatement.class);
  }

  @Override
  @Nullable
  public JASSLocalVarStatement getLocalVarStatement() {
    return findChildByClass(JASSLocalVarStatement.class);
  }

  @Override
  @Nullable
  public JASSLoopStatement getLoopStatement() {
    return findChildByClass(JASSLoopStatement.class);
  }

  @Override
  @Nullable
  public JASSReturnStatement getReturnStatement() {
    return findChildByClass(JASSReturnStatement.class);
  }

  @Override
  @Nullable
  public JASSSetStatement getSetStatement() {
    return findChildByClass(JASSSetStatement.class);
  }

}
