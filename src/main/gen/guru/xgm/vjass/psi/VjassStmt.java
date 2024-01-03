// This is a generated file. Not intended for manual editing.
package guru.xgm.vjass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface VjassStmt extends PsiElement {

  @Nullable
  VjassCallSetStmt getCallSetStmt();

  @Nullable
  VjassExitWhenStmt getExitWhenStmt();

  @Nullable
  VjassIfStmt getIfStmt();

  @Nullable
  VjassLVarStmt getLVarStmt();

  @Nullable
  VjassLoopStmt getLoopStmt();

  @Nullable
  VjassReturnStmt getReturnStmt();

}
