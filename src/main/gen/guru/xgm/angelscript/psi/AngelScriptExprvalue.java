// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptExprvalue extends PsiElement {

  @Nullable
  AngelScriptAssign getAssign();

  @Nullable
  AngelScriptCast getCast();

  @Nullable
  AngelScriptConstructcall getConstructcall();

  @Nullable
  AngelScriptFunccall getFunccall();

  @Nullable
  AngelScriptLambda getLambda();

  @Nullable
  AngelScriptLiteral getLiteral();

  @Nullable
  AngelScriptVaraccess getVaraccess();

}
