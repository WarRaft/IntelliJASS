// This is a generated file. Not intended for manual editing.
package guru.xgm.vjass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface VjassLib extends PsiElement {

  @NotNull
  List<VjassFun> getFunList();

  @NotNull
  List<VjassGlob> getGlobList();

  @NotNull
  List<VjassHookDef> getHookDefList();

  @Nullable
  VjassLibReq getLibReq();

  @NotNull
  List<VjassModuleDef> getModuleDefList();

  @NotNull
  List<VjassStructDef> getStructDefList();

}
