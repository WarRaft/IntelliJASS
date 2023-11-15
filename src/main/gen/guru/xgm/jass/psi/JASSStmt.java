// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JASSStmt extends PsiElement {

  @Nullable
  JASSCallStmt getCallStmt();

  @Nullable
  JASSExitWhenStmt getExitWhenStmt();

  @Nullable
  JASSIfStmt getIfStmt();

  @Nullable
  JASSLocalVarStmt getLocalVarStmt();

  @Nullable
  JASSLoopStmt getLoopStmt();

  @Nullable
  JASSReturnStmt getReturnStmt();

  @Nullable
  JASSSetStmt getSetStmt();

}
