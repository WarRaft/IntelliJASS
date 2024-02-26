// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JassGvar extends PsiElement {

  @Nullable
  JassArr getArr();

  @Nullable
  JassConst getConst();

  @Nullable
  JassExpr getExpr();

  @Nullable
  JassGvarName getGvarName();

  @NotNull
  JassTypeName getTypeName();

}
