// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptFunc extends PsiElement {

  @NotNull
  AngelScriptFuncattr getFuncattr();

  @NotNull
  AngelScriptIdentifier getIdentifier();

  @NotNull
  AngelScriptParamlist getParamlist();

  @Nullable
  AngelScriptStatblock getStatblock();

  @Nullable
  AngelScriptType getType();

}
