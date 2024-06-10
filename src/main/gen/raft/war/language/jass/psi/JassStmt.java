// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi;

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
  JassLoopStmt getLoopStmt();

  @Nullable
  JassLvarStmt getLvarStmt();

  @Nullable
  JassReturnStmt getReturnStmt();

  @Nullable
  JassSetStmt getSetStmt();

}
