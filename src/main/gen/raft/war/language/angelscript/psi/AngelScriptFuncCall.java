// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptFuncCall extends PsiElement {

  @Nullable
  AngelScriptArgList getArgList();

  @NotNull
  AngelScriptFunName getFunName();

  @NotNull
  AngelScriptScope getScope();

  @Nullable
  PsiElement getLparen();

  @Nullable
  PsiElement getRparen();

}
