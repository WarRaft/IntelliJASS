// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptRootItem extends PsiElement {

  @Nullable
  AngelScriptClazz getClazz();

  @Nullable
  AngelScriptFun getFun();

  @Nullable
  AngelScriptFunDef getFunDef();

  @Nullable
  AngelScriptIncludeStmt getIncludeStmt();

  @Nullable
  AngelScriptNspace getNspace();

  @Nullable
  AngelScriptVar getVar();

}
