// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.jass.psi.JassTypes.*;
import raft.war.language.jass.psi.funName.JassFunNameBaseImpl;
import raft.war.language.jass.psi.*;
import raft.war.language.jass.psi.funName.JassFunNameStub;
import com.intellij.psi.stubs.IStubElementType;

public class JassFunNameImpl extends JassFunNameBaseImpl implements JassFunName {

  public JassFunNameImpl(@NotNull JassFunNameStub stub, @NotNull IStubElementType<?, ?> type) {
    super(stub, type);
  }

  public JassFunNameImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitFunName(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof JassVisitor) accept((JassVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @NotNull
  public PsiElement getId() {
    return notNullChild(findChildByType(ID));
  }

}
