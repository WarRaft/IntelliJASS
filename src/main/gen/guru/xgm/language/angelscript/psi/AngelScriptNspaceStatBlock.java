// This is a generated file. Not intended for manual editing.
package guru.xgm.language.angelscript.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface AngelScriptNspaceStatBlock extends PsiElement {

  @NotNull
  List<AngelScriptClazz> getClazzList();

  @NotNull
  List<AngelScriptEnums> getEnumsList();

  @NotNull
  List<AngelScriptFun> getFunList();

  @NotNull
  List<AngelScriptFunDef> getFunDefList();

  @NotNull
  List<AngelScriptIncludeStmt> getIncludeStmtList();

  @NotNull
  List<AngelScriptNspace> getNspaceList();

  @NotNull
  List<AngelScriptVar> getVarList();

}
