// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.PsiElement;

public class JASSVisitor extends PsiElementVisitor {

  public void visitAndExpression(@NotNull JASSAndExpression o) {
    visitExpression(o);
  }

  public void visitArgument(@NotNull JASSArgument o) {
    visitPsiElement(o);
  }

  public void visitArgumentList(@NotNull JASSArgumentList o) {
    visitPsiElement(o);
  }

  public void visitAssignExpression(@NotNull JASSAssignExpression o) {
    visitExpression(o);
  }

  public void visitCallExpression(@NotNull JASSCallExpression o) {
    visitExpression(o);
  }

  public void visitConditionalExpression(@NotNull JASSConditionalExpression o) {
    visitExpression(o);
  }

  public void visitDivExpression(@NotNull JASSDivExpression o) {
    visitExpression(o);
  }

  public void visitExpression(@NotNull JASSExpression o) {
    visitPsiElement(o);
  }

  public void visitFunctionName(@NotNull JASSFunctionName o) {
    visitPsiElement(o);
  }

  public void visitGlobalsDeclaration(@NotNull JASSGlobalsDeclaration o) {
    visitPsiElement(o);
  }

  public void visitLiteralExpression(@NotNull JASSLiteralExpression o) {
    visitExpression(o);
  }

  public void visitMinusExpression(@NotNull JASSMinusExpression o) {
    visitExpression(o);
  }

  public void visitMinusUnaryExpression(@NotNull JASSMinusUnaryExpression o) {
    visitExpression(o);
  }

  public void visitMulExpression(@NotNull JASSMulExpression o) {
    visitExpression(o);
  }

  public void visitNativeDeclaration(@NotNull JASSNativeDeclaration o) {
    visitPsiElement(o);
  }

  public void visitNotUnaryExpression(@NotNull JASSNotUnaryExpression o) {
    visitExpression(o);
  }

  public void visitOrExpression(@NotNull JASSOrExpression o) {
    visitExpression(o);
  }

  public void visitParenExpression(@NotNull JASSParenExpression o) {
    visitExpression(o);
  }

  public void visitPlusExpression(@NotNull JASSPlusExpression o) {
    visitExpression(o);
  }

  public void visitPlusUnaryExpression(@NotNull JASSPlusUnaryExpression o) {
    visitExpression(o);
  }

  public void visitRefExpression(@NotNull JASSRefExpression o) {
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
