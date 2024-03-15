// This is a generated file. Not intended for manual editing.
package guru.xgm.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptVirtProp extends PsiElement {

  @NotNull
  List<AngelScriptFuncAttr> getFuncAttrList();

  @NotNull
  List<AngelScriptStatBlock> getStatBlockList();

  @NotNull
  AngelScriptType getType();

  @NotNull
  PsiElement getId();

}
