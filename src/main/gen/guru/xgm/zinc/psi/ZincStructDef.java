// This is a generated file. Not intended for manual editing.
package guru.xgm.zinc.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZincStructDef extends PsiElement {

  @NotNull
  List<ZincGvarDef> getGvarDefList();

  @NotNull
  List<ZincMethodDef> getMethodDefList();

  @NotNull
  List<ZincStructStat> getStructStatList();

  @NotNull
  List<ZincStructVis> getStructVisList();

  @Nullable
  PsiElement getId();

}
