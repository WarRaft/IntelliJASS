// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptPrimaryExpr extends AngelScriptExpr {

  @Nullable
  AngelScriptArrayAccess getArrayAccess();

  @Nullable
  AngelScriptFuncCall getFuncCall();

  @Nullable
  AngelScriptLambda getLambda();

  @Nullable
  PsiElement getHexval();

  @Nullable
  PsiElement getId();

  @Nullable
  PsiElement getIntval();

  @Nullable
  PsiElement getStrval();

}