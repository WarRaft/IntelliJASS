// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static raft.war.language.jass.psi.JassTypes.*;
import raft.war.language.jass.psi.varName.JassVarNameBaseImpl;
import raft.war.language.jass.psi.*;
import raft.war.language.jass.psi.varName.JassVarNameStub;
import com.intellij.psi.stubs.IStubElementType;

public class JassVarNameImpl extends JassVarNameBaseImpl implements JassVarName {

  public JassVarNameImpl(@NotNull JassVarNameStub stub, @NotNull IStubElementType<?, ?> type) {
    super(stub, type);
  }

  public JassVarNameImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull JassVisitor visitor) {
    visitor.visitVarName(this);
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
