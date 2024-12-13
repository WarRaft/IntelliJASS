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

public class AngelScriptElseStmtImpl extends ASTWrapperPsiElement implements AngelScriptElseStmt {

  public AngelScriptElseStmtImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitElseStmt(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public AngelScriptBreakStmt getBreakStmt() {
    return findChildByClass(AngelScriptBreakStmt.class);
  }

  @Override
  @Nullable
  public AngelScriptDoWhileStmt getDoWhileStmt() {
    return findChildByClass(AngelScriptDoWhileStmt.class);
  }

  @Override
  @Nullable
  public AngelScriptExprStat getExprStat() {
    return findChildByClass(AngelScriptExprStat.class);
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
  public AngelScriptStmtBracer getStmtBracer() {
    return findChildByClass(AngelScriptStmtBracer.class);
  }

  @Override
  @Nullable
  public AngelScriptSwitchStmt getSwitchStmt() {
    return findChildByClass(AngelScriptSwitchStmt.class);
  }

  @Override
  @Nullable
  public AngelScriptWhileStmt getWhileStmt() {
    return findChildByClass(AngelScriptWhileStmt.class);
  }

  @Override
  @NotNull
  public PsiElement getElse() {
    return findNotNullChildByType(ELSE);
  }

}
