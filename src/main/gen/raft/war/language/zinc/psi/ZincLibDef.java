// This is a generated file. Not intended for manual editing.
package raft.war.language.zinc.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZincLibDef extends PsiElement {

  @NotNull
  List<ZincFuncDef> getFuncDefList();

  @Nullable
  ZincLibReq getLibReq();

  @NotNull
  List<ZincLibVisDef> getLibVisDefList();

  @NotNull
  List<ZincStructDef> getStructDefList();

  @NotNull
  List<ZincVarDef> getVarDefList();

  @Nullable
  PsiElement getId();

}
