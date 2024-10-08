// This is a generated file. Not intended for manual editing.
package raft.war.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptLambda extends PsiElement {

  @NotNull
  AngelScriptStatBlock getStatBlock();

  @NotNull
  List<AngelScriptType> getTypeList();

  @NotNull
  List<AngelScriptTypeMod> getTypeModList();

  @NotNull
  PsiElement getFunction();

  @NotNull
  PsiElement getLparen();

  @NotNull
  PsiElement getRparen();

}
