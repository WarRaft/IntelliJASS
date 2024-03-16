// This is a generated file. Not intended for manual editing.
package guru.xgm.language.angelscript.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.language.angelscript.psi.*;

public class AngelScriptForStmtImpl extends ASTWrapperPsiElement implements AngelScriptForStmt {

  public AngelScriptForStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitForStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<AngelScriptAssign> getAssignList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptAssign.class);
  }

  @Override
  @NotNull
  public List<AngelScriptExprStat> getExprStatList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptExprStat.class);
  }

  @Override
  @NotNull
  public AngelScriptStmt getStmt() {
    return findNotNullChildByClass(AngelScriptStmt.class);
  }

  @Override
  @Nullable
  public AngelScriptVar getVar() {
    return findChildByClass(AngelScriptVar.class);
  }

}