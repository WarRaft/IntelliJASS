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

public class AngelScriptStatBlockImpl extends ASTWrapperPsiElement implements AngelScriptStatBlock {

  public AngelScriptStatBlockImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitStatBlock(this);
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
  public List<AngelScriptDoWhileStmt> getDoWhileStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptDoWhileStmt.class);
  }

  @Override
  @NotNull
  public List<AngelScriptExprStat> getExprStatList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptExprStat.class);
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
  public List<AngelScriptStatBlock> getStatBlockList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptStatBlock.class);
  }

  @Override
  @NotNull
  public List<AngelScriptSwitchStmt> getSwitchStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptSwitchStmt.class);
  }

  @Override
  @NotNull
  public List<AngelScriptVar> getVarList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptVar.class);
  }

  @Override
  @NotNull
  public List<AngelScriptWhileStmt> getWhileStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptWhileStmt.class);
  }

  @Override
  @NotNull
  public PsiElement getLbrace() {
    return findNotNullChildByType(LBRACE);
  }

  @Override
  @NotNull
  public PsiElement getRbrace() {
    return findNotNullChildByType(RBRACE);
  }

}
