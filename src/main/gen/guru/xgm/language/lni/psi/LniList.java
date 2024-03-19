// This is a generated file. Not intended for manual editing.
package guru.xgm.language.lni.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface LniList extends PsiElement {

  @NotNull
  List<LniListItem> getListItemList();

  @NotNull
  PsiElement getLbrace();

  @NotNull
  PsiElement getRbrace();

}
