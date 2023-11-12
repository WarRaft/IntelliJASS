// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.PsiElement;

public class JASSVisitor extends PsiElementVisitor {

  public void visitAndExpr(@NotNull JASSAndExpr o) {
    visitExpression(o);
  }

  public void visitArrayLiteral(@NotNull JASSArrayLiteral o) {
    visitPsiElement(o);
  }

  public void visitDivExpr(@NotNull JASSDivExpr o) {
    visitExpression(o);
  }

  public void visitDivUnaryExpr(@NotNull JASSDivUnaryExpr o) {
    visitExpression(o);
  }

  public void visitEqualExpr(@NotNull JASSEqualExpr o) {
    visitExpression(o);
  }

  public void visitExpression(@NotNull JASSExpression o) {
    visitPsiElement(o);
  }

  public void visitFunctionLiteral(@NotNull JASSFunctionLiteral o) {
    visitPsiElement(o);
  }

  public void visitGreaterThanEqualsExpr(@NotNull JASSGreaterThanEqualsExpr o) {
    visitExpression(o);
  }

  public void visitGreaterThanExpr(@NotNull JASSGreaterThanExpr o) {
    visitExpression(o);
  }

  public void visitLessThanEqualsExpr(@NotNull JASSLessThanEqualsExpr o) {
    visitExpression(o);
  }

  public void visitLessThanExpr(@NotNull JASSLessThanExpr o) {
    visitExpression(o);
  }

  public void visitMinusExpr(@NotNull JASSMinusExpr o) {
    visitExpression(o);
  }

  public void visitMinusUnaryExpr(@NotNull JASSMinusUnaryExpr o) {
    visitExpression(o);
  }

  public void visitMulExpr(@NotNull JASSMulExpr o) {
    visitExpression(o);
  }

  public void visitMulUnaryExpr(@NotNull JASSMulUnaryExpr o) {
    visitExpression(o);
  }

  public void visitNotEqualsExpr(@NotNull JASSNotEqualsExpr o) {
    visitExpression(o);
  }

  public void visitNotExpr(@NotNull JASSNotExpr o) {
    visitExpression(o);
  }

  public void visitOrExpr(@NotNull JASSOrExpr o) {
    visitExpression(o);
  }

  public void visitPlusExpr(@NotNull JASSPlusExpr o) {
    visitExpression(o);
  }

  public void visitPlusUnaryExpr(@NotNull JASSPlusUnaryExpr o) {
    visitExpression(o);
  }

  public void visitPrimaryExpr(@NotNull JASSPrimaryExpr o) {
    visitExpression(o);
  }

  public void visitProperty(@NotNull JASSProperty o) {
    visitPsiElement(o);
  }

  public void visitPsiElement(@NotNull PsiElement o) {
    visitElement(o);
  }

}
