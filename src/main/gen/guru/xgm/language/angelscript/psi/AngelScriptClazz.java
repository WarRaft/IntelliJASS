// This is a generated file. Not intended for manual editing.
package guru.xgm.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptClazz extends PsiElement {

  @NotNull
  List<AngelScriptFun> getFunList();

  @NotNull
  List<AngelScriptFunDef> getFunDefList();

  @NotNull
  List<AngelScriptVar> getVarList();

  @NotNull
  List<AngelScriptVirtProp> getVirtPropList();

}
