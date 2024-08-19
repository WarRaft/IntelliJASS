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

public class AngelScriptPrimTypeImpl extends ASTWrapperPsiElement implements AngelScriptPrimType {

  public AngelScriptPrimTypeImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull AngelScriptVisitor visitor) {
    visitor.visitPrimType(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof AngelScriptVisitor) accept((AngelScriptVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public PsiElement getArray() {
    return findChildByType(ARRAY);
  }

  @Override
  @Nullable
  public PsiElement getBool() {
    return findChildByType(BOOL);
  }

  @Override
  @Nullable
  public PsiElement getCode() {
    return findChildByType(CODE);
  }

  @Override
  @Nullable
  public PsiElement getDouble() {
    return findChildByType(DOUBLE);
  }

  @Override
  @Nullable
  public PsiElement getFloat() {
    return findChildByType(FLOAT);
  }

  @Override
  @Nullable
  public PsiElement getHandle() {
    return findChildByType(HANDLE);
  }

  @Override
  @Nullable
  public PsiElement getId() {
    return findChildByType(ID);
  }

  @Override
  @Nullable
  public PsiElement getInt() {
    return findChildByType(INT);
  }

  @Override
  @Nullable
  public PsiElement getInt16() {
    return findChildByType(INT16);
  }

  @Override
  @Nullable
  public PsiElement getInt32() {
    return findChildByType(INT32);
  }

  @Override
  @Nullable
  public PsiElement getInt64() {
    return findChildByType(INT64);
  }

  @Override
  @Nullable
  public PsiElement getInt8() {
    return findChildByType(INT8);
  }

  @Override
  @Nullable
  public PsiElement getString() {
    return findChildByType(STRING);
  }

  @Override
  @Nullable
  public PsiElement getUint() {
    return findChildByType(UINT);
  }

  @Override
  @Nullable
  public PsiElement getUint16() {
    return findChildByType(UINT16);
  }

  @Override
  @Nullable
  public PsiElement getUint32() {
    return findChildByType(UINT32);
  }

  @Override
  @Nullable
  public PsiElement getUint64() {
    return findChildByType(UINT64);
  }

  @Override
  @Nullable
  public PsiElement getVoid() {
    return findChildByType(VOID);
  }

}
