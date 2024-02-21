// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptArglist extends PsiElement {

  @NotNull
  List<AngelScriptAssign> getAssignList();

  @NotNull
  List<AngelScriptIdentifier> getIdentifierList();

}
