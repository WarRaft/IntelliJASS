// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static guru.xgm.angelscript.psi.AngelScriptTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import guru.xgm.angelscript.psi.*;

public class AngelScriptBracedStmtImpl extends ASTWrapperPsiElement implements AngelScriptBracedStmt {

  public AngelScriptBracedStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitBracedStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<AngelScriptBreakStmt> getBreakStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptBreakStmt.class);
  }

  @Override
  @NotNull
  public List<AngelScriptDoStmt> getDoStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptDoStmt.class);
  }

  @Override
  @NotNull
  public List<AngelScriptExprStmt> getExprStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptExprStmt.class);
  }

  @Override
  @NotNull
  public List<AngelScriptForStmt> getForStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptForStmt.class);
  }

  @Override
  @NotNull
  public List<AngelScriptIfStmt> getIfStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptIfStmt.class);
  }

  @Override
  @NotNull
  public List<AngelScriptReturnStmt> getReturnStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptReturnStmt.class);
  }

  @Override
  @NotNull
  public List<AngelScriptVarDef> getVarDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptVarDef.class);
  }

  @Override
  @NotNull
  public List<AngelScriptWhileStmt> getWhileStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptWhileStmt.class);
  }

}
