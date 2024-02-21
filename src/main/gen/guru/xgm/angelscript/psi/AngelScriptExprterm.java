// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptExprterm extends PsiElement {

  @NotNull
  List<AngelScriptExprpostop> getExprpostopList();

  @NotNull
  List<AngelScriptExprpreop> getExprpreopList();

  @Nullable
  AngelScriptExprvalue getExprvalue();

  @Nullable
  AngelScriptInitlist getInitlist();

  @Nullable
  AngelScriptType getType();

}
