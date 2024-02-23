// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptStructDef extends PsiElement {

  @NotNull
  List<AngelScriptMethodDef> getMethodDefList();

  @NotNull
  List<AngelScriptStructStat> getStructStatList();

  @NotNull
  List<AngelScriptStructVis> getStructVisList();

  @NotNull
  List<AngelScriptVarDef> getVarDefList();

  @Nullable
  PsiElement getId();

}
