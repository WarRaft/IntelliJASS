// This is a generated file. Not intended for manual editing.
package guru.xgm.language.zinc.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZincLibVisDef extends PsiElement {

  @NotNull
  List<ZincFuncDef> getFuncDefList();

  @NotNull
  List<ZincLibVisDef> getLibVisDefList();

  @NotNull
  List<ZincStructDef> getStructDefList();

  @NotNull
  List<ZincVarDef> getVarDefList();

  @NotNull
  ZincVis getVis();

}
