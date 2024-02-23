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

public class AngelScriptWhileStmtImpl extends ASTWrapperPsiElement implements AngelScriptWhileStmt {

  public AngelScriptWhileStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitWhileStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public AngelScriptBracedStmt getBracedStmt() {
    return findChildByClass(AngelScriptBracedStmt.class);
  }

  @Override
  @Nullable
  public AngelScriptBreakStmt getBreakStmt() {
    return findChildByClass(AngelScriptBreakStmt.class);
  }

  @Override
  @Nullable
  public AngelScriptDoStmt getDoStmt() {
    return findChildByClass(AngelScriptDoStmt.class);
  }

  @Override
  @Nullable
  public AngelScriptExpr getExpr() {
    return findChildByClass(AngelScriptExpr.class);
  }

  @Override
  @Nullable
  public AngelScriptExprStmt getExprStmt() {
    return findChildByClass(AngelScriptExprStmt.class);
  }

  @Override
  @Nullable
  public AngelScriptForStmt getForStmt() {
    return findChildByClass(AngelScriptForStmt.class);
  }

  @Override
  @Nullable
  public AngelScriptIfStmt getIfStmt() {
    return findChildByClass(AngelScriptIfStmt.class);
  }

  @Override
  @Nullable
  public AngelScriptReturnStmt getReturnStmt() {
    return findChildByClass(AngelScriptReturnStmt.class);
  }

  @Override
  @Nullable
  public AngelScriptVarDef getVarDef() {
    return findChildByClass(AngelScriptVarDef.class);
  }

  @Override
  @Nullable
  public AngelScriptWhileStmt getWhileStmt() {
    return findChildByClass(AngelScriptWhileStmt.class);
  }

}
