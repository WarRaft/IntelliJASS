// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptClazz extends PsiElement {

  @NotNull
  List<AngelScriptFunc> getFuncList();

  @NotNull
  List<AngelScriptFuncDef> getFuncDefList();

  @NotNull
  List<AngelScriptVar> getVarList();

  @NotNull
  List<AngelScriptVirtProp> getVirtPropList();

}
