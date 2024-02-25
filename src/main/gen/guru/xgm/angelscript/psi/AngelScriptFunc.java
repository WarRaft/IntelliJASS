// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptFunc extends PsiElement {

  @NotNull
  AngelScriptFuncAttr getFuncAttr();

  @NotNull
  AngelScriptParamList getParamList();

  @Nullable
  AngelScriptStatBlock getStatBlock();

  @Nullable
  AngelScriptType getType();

  @NotNull
  PsiElement getId();

}
