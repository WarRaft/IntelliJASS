// This is a generated file. Not intended for manual editing.
package guru.xgm.language.lni.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface LniProperty extends PsiElement {

  @Nullable
  LniList getList();

  @Nullable
  LniPrim getPrim();

  @NotNull
  PsiElement getEq();

  @NotNull
  PsiElement getId();

}
