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

public class AngelScriptNspaceStatBlockImpl extends ASTWrapperPsiElement implements AngelScriptNspaceStatBlock {

  public AngelScriptNspaceStatBlockImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitNspaceStatBlock(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public List<AngelScriptClazz> getClazzList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptClazz.class);
  }

  @Override
  @NotNull
  public List<AngelScriptEnums> getEnumsList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptEnums.class);
  }

  @Override
  @NotNull
  public List<AngelScriptFun> getFunList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptFun.class);
  }

  @Override
  @NotNull
  public List<AngelScriptFunDef> getFunDefList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptFunDef.class);
  }

  @Override
  @NotNull
  public List<AngelScriptIncludeStmt> getIncludeStmtList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptIncludeStmt.class);
  }

  @Override
  @NotNull
  public List<AngelScriptNspace> getNspaceList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptNspace.class);
  }

  @Override
  @NotNull
  public List<AngelScriptVar> getVarList() {
    return PsiTreeUtil.getChildrenOfTypeAsList(this, AngelScriptVar.class);
  }

}
