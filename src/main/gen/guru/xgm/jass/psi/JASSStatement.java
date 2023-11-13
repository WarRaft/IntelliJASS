// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface JASSStatement extends PsiElement {

  @Nullable
  JASSCallStatement getCallStatement();

  @Nullable
  JASSExitWhenStatement getExitWhenStatement();

  @Nullable
  JASSIfStatement getIfStatement();

  @Nullable
  JASSLocalVarStatement getLocalVarStatement();

  @Nullable
  JASSLoopStatement getLoopStatement();

  @Nullable
  JASSReturnStatement getReturnStatement();

  @Nullable
  JASSSetStatement getSetStatement();

}
