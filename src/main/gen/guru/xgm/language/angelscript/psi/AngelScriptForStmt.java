// This is a generated file. Not intended for manual editing.
package guru.xgm.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptForStmt extends PsiElement {

  @NotNull
  List<AngelScriptAssign> getAssignList();

  @NotNull
  List<AngelScriptExprStat> getExprStatList();

  @NotNull
  AngelScriptStmt getStmt();

  @Nullable
  AngelScriptVar getVar();

}
