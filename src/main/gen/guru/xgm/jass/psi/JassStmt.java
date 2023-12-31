// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JassStmt extends PsiElement {

  @Nullable
  JassCallStmt getCallStmt();

  @Nullable
  JassExitWhenStmt getExitWhenStmt();

  @Nullable
  JassIfStmt getIfStmt();

  @Nullable
  JassLocalVarStmt getLocalVarStmt();

  @Nullable
  JassLoopStmt getLoopStmt();

  @Nullable
  JassReturnStmt getReturnStmt();

  @Nullable
  JassSetStmt getSetStmt();

}
