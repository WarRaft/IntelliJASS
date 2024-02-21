
package guru.xgm.angelscript;

import com.intellij.lang.refactoring.RefactoringSupportProvider;
import com.intellij.psi.PsiElement;
import guru.xgm.angelscript.psi.AngelScriptVar;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class AngelScriptRefactoringSupportProvider extends RefactoringSupportProvider {

  @Override
  public boolean isMemberInplaceRenameAvailable(@NotNull PsiElement elementToRename, @Nullable PsiElement context) {
    return (elementToRename instanceof AngelScriptVar);
  }

}
