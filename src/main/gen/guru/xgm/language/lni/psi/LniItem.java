// This is a generated file. Not intended for manual editing.
package guru.xgm.language.lni.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface LniItem extends PsiElement {

  @NotNull
  LniHead getHead();

  @NotNull
  List<LniProperty> getPropertyList();

}
