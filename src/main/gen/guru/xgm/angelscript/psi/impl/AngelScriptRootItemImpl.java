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

public class AngelScriptRootItemImpl extends ASTWrapperPsiElement implements AngelScriptRootItem {

  public AngelScriptRootItemImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitRootItem(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public AngelScriptClazz getClazz() {
    return findChildByClass(AngelScriptClazz.class);
  }

  @Override
  @Nullable
  public AngelScriptFun getFun() {
    return findChildByClass(AngelScriptFun.class);
  }

  @Override
  @Nullable
  public AngelScriptFunDef getFunDef() {
    return findChildByClass(AngelScriptFunDef.class);
  }

  @Override
  @Nullable
  public AngelScriptIncludeStmt getIncludeStmt() {
    return findChildByClass(AngelScriptIncludeStmt.class);
  }

  @Override
  @Nullable
  public AngelScriptNspace getNspace() {
    return findChildByClass(AngelScriptNspace.class);
  }

  @Override
  @Nullable
  public AngelScriptVar getVar() {
    return findChildByClass(AngelScriptVar.class);
  }

}
