// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptLibVisDef extends PsiElement {

  @NotNull
  List<AngelScriptFuncDef> getFuncDefList();

  @NotNull
  List<AngelScriptLibVisDef> getLibVisDefList();

  @NotNull
  List<AngelScriptStructDef> getStructDefList();

  @NotNull
  List<AngelScriptVarDef> getVarDefList();

  @NotNull
  AngelScriptVis getVis();

}
