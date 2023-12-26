// This is a generated file. Not intended for manual editing.
package guru.xgm.zinc.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZincStmt extends PsiElement {

  @Nullable
  ZincBreakStmt getBreakStmt();

  @Nullable
  ZincCallStmt getCallStmt();

  @Nullable
  ZincDoStmt getDoStmt();

  @Nullable
  ZincForStmt getForStmt();

  @Nullable
  ZincIfStmt getIfStmt();

  @Nullable
  ZincLvarStmt getLvarStmt();

  @Nullable
  ZincReturnStmt getReturnStmt();

  @Nullable
  ZincSetStmt getSetStmt();

  @Nullable
  ZincStructStmt getStructStmt();

  @Nullable
  ZincWhileStmt getWhileStmt();

}
