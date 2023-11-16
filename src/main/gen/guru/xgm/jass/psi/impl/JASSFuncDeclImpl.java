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

public class JASSFuncDeclImpl extends ASTWrapperPsiElement implements JASSFuncDecl {

  public JASSFuncDeclImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JASSVisitor visitor) {
    visitor.visitFuncDecl(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JASSVisitor) accept((JASSVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public JASSFuncDeclName getFuncDeclName() {
    return findChildByClass(JASSFuncDeclName.class);
  }

  @Override
  @Nullable
  public JASSFuncReturns getFuncReturns() {
    return findChildByClass(JASSFuncReturns.class);
  }

  @Override
  @Nullable
  public JASSFuncTakes getFuncTakes() {
    return findChildByClass(JASSFuncTakes.class);
  }

  @Override
  @NotNull
  public List<JASSStmt> getStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, JASSStmt.class);
  }

}
