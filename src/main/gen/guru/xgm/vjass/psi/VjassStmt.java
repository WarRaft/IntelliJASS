// This is a generated file. Not intended for manual editing.
package guru.xgm.vjass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface VjassStmt extends PsiElement {

  @Nullable
  VjassCallStmt getCallStmt();

  @Nullable
  VjassExitWhenStmt getExitWhenStmt();

  @Nullable
  VjassIfStmt getIfStmt();

  @Nullable
  VjassLocalVarStmt getLocalVarStmt();

  @Nullable
  VjassLoopStmt getLoopStmt();

  @Nullable
  VjassReturnStmt getReturnStmt();

  @Nullable
  VjassSetStmt getSetStmt();

}
