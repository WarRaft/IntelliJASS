// This is a generated file. Not intended for manual editing.
package raft.war.language.zinc.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZincStructVis extends PsiElement {

  @NotNull
  List<ZincMethodDef> getMethodDefList();

  @NotNull
  List<ZincStructStat> getStructStatList();

  @NotNull
  List<ZincStructVis> getStructVisList();

  @NotNull
  List<ZincVarDef> getVarDefList();

  @NotNull
  ZincVis getVis();

}
