// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptPrimExpr extends AngelScriptExpr {

  @Nullable
  AngelScriptArrayAccess getArrayAccess();

  @Nullable
  AngelScriptFuncCall getFuncCall();

  @Nullable
  AngelScriptLambda getLambda();

  @Nullable
  AngelScriptStr getStr();

  @Nullable
  PsiElement getAt();

  @Nullable
  PsiElement getFalse();

  @Nullable
  PsiElement getGet();

  @Nullable
  PsiElement getHexval();

  @Nullable
  PsiElement getId();

  @Nullable
  PsiElement getIntval();

  @Nullable
  PsiElement getNil();

  @Nullable
  PsiElement getNull();

  @Nullable
  PsiElement getRawval();

  @Nullable
  PsiElement getRealval();

  @Nullable
  PsiElement getSet();

  @Nullable
  PsiElement getTrue();

}
