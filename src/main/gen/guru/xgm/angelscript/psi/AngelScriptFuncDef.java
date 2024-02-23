// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptFuncDef extends PsiElement {

  @Nullable
  AngelScriptFuncBody getFuncBody();

  @NotNull
  AngelScriptFuncDefName getFuncDefName();

  @Nullable
  AngelScriptFuncReturns getFuncReturns();

  @Nullable
  AngelScriptTypedVarList getTypedVarList();

}
