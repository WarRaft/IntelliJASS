// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.PsiElement;

public class JASSVisitor extends PsiElementVisitor {

  public void visitArgList(@NotNull JASSArgList o) {
    visitPsiElement(o);
  }

  public void visitArgumentDelaration(@NotNull JASSArgumentDelaration o) {
    visitPsiElement(o);
  }

  public void visitAssignExpr(@NotNull JASSAssignExpr o) {
    visitExpr(o);
  }

  public void visitBetweenExpr(@NotNull JASSBetweenExpr o) {
    visitExpr(o);
  }

  public void visitCallExpr(@NotNull JASSCallExpr o) {
    visitExpr(o);
  }

  public void visitConditionalExpr(@NotNull JASSConditionalExpr o) {
    visitExpr(o);
  }

  public void visitDivExpr(@NotNull JASSDivExpr o) {
    visitExpr(o);
  }

  public void visitElvisExpr(@NotNull JASSElvisExpr o) {
    visitExpr(o);
  }

  public void visitExpExpr(@NotNull JASSExpExpr o) {
    visitExpr(o);
  }

  public void visitExpr(@NotNull JASSExpr o) {
    visitPsiElement(o);
  }

  public void visitFactorialExpr(@NotNull JASSFactorialExpr o) {
    visitExpr(o);
  }

  public void visitFunctionName(@NotNull JASSFunctionName o) {
    visitPsiElement(o);
  }

  public void visitGlobalsDeclaration(@NotNull JASSGlobalsDeclaration o) {
    visitPsiElement(o);
  }

  public void visitIsNotExpr(@NotNull JASSIsNotExpr o) {
    visitExpr(o);
  }

  public void visitLiteralExpr(@NotNull JASSLiteralExpr o) {
    visitExpr(o);
  }

  public void visitMinusExpr(@NotNull JASSMinusExpr o) {
    visitExpr(o);
  }

  public void visitMulExpr(@NotNull JASSMulExpr o) {
    visitExpr(o);
  }

  public void visitNativeDeclaration(@NotNull JASSNativeDeclaration o) {
    visitPsiElement(o);
  }

  public void visitParenExpr(@NotNull JASSParenExpr o) {
    visitExpr(o);
  }

  public void visitPlusExpr(@NotNull JASSPlusExpr o) {
    visitExpr(o);
  }

  public void visitRefExpr(@NotNull JASSRefExpr o) {
    visitExpr(o);
  }

  public void visitType(@NotNull JASSType o) {
    visitPsiElement(o);
  }

  public void visitTypeDeclaration(@NotNull JASSTypeDeclaration o) {
    visitPsiElement(o);
  }

  public void visitUnaryMinExpr(@NotNull JASSUnaryMinExpr o) {
    visitExpr(o);
  }

  public void visitUnaryNotExpr(@NotNull JASSUnaryNotExpr o) {
    visitExpr(o);
  }

  public void visitUnaryPlusExpr(@NotNull JASSUnaryPlusExpr o) {
    visitExpr(o);
  }

  public void visitVariable(@NotNull JASSVariable o) {
    visitPsiElement(o);
  }

  public void visitVariableDeclaration(@NotNull JASSVariableDeclaration o) {
    visitPsiElement(o);
  }

  public void visitXorExpr(@NotNull JASSXorExpr o) {
    visitExpr(o);
  }

  public void visitPsiElement(@NotNull PsiElement o) {
    visitElement(o);
  }

}
