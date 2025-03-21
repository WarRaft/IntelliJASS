// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;
import raft.war.language.jass.psi.compositeElement.JassCompositeElement;

public interface JassStmt extends JassCompositeElement {

  @Nullable
  JassCallStmt getCallStmt();

  @Nullable
  JassExitWhenStmt getExitWhenStmt();

  @Nullable
  JassIfStmt getIfStmt();

  @Nullable
  JassLoopStmt getLoopStmt();

  @Nullable
  JassReturnStmt getReturnStmt();

  @Nullable
  JassSetStmt getSetStmt();

  @Nullable
  JassVarDef getVarDef();

}
