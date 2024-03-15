// This is a generated file. Not intended for manual editing.
package guru.xgm.language.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JassGlob extends PsiElement {

  @NotNull
  List<JassGvar> getGvarList();

  @Nullable
  PsiElement getEndglobals();

  @NotNull
  PsiElement getGlobals();

}
