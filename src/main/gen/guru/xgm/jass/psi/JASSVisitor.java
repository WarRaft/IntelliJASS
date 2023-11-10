// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.PsiElement;

public class JASSVisitor extends PsiElementVisitor {

  public void visitAdditionExpression(@NotNull JASSAdditionExpression o) {
    visitExpression(o);
  }

  public void visitArgumentDelaration(@NotNull JASSArgumentDelaration o) {
    visitPsiElement(o);
  }

  public void visitExpression(@NotNull JASSExpression o) {
    visitPsiElement(o);
  }

  public void visitFunctionCall(@NotNull JASSFunctionCall o) {
    visitPsiElement(o);
  }

  public void visitFunctionName(@NotNull JASSFunctionName o) {
    visitPsiElement(o);
  }

  public void visitGlobalsDeclaration(@NotNull JASSGlobalsDeclaration o) {
    visitPsiElement(o);
  }

  public void visitMultiplication(@NotNull JASSMultiplication o) {
    visitPsiElement(o);
  }

  public void visitNativeDeclaration(@NotNull JASSNativeDeclaration o) {
    visitPsiElement(o);
  }

  public void visitPrimary(@NotNull JASSPrimary o) {
    visitPsiElement(o);
  }

  public void visitPrimaryTermExpression(@NotNull JASSPrimaryTermExpression o) {
    visitExpression(o);
  }

  public void visitType(@NotNull JASSType o) {
    visitPsiElement(o);
  }

  public void visitTypeDeclaration(@NotNull JASSTypeDeclaration o) {
    visitPsiElement(o);
  }

  public void visitVariable(@NotNull JASSVariable o) {
    visitPsiElement(o);
  }

  public void visitVariableDeclaration(@NotNull JASSVariableDeclaration o) {
    visitPsiElement(o);
  }

  public void visitPsiElement(@NotNull PsiElement o) {
    visitElement(o);
  }

}
