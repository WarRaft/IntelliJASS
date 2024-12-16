// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptLambda extends PsiElement {

  @Nullable
  AngelScriptStmtBracer getStmtBracer();

  @NotNull
  List<AngelScriptType> getTypeList();

  @NotNull
  List<AngelScriptTypeMod> getTypeModList();

  @NotNull
  PsiElement getFunction();

  @Nullable
  PsiElement getLparen();

  @Nullable
  PsiElement getRparen();

}
