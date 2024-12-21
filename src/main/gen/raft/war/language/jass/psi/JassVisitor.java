// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi;

import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElementVisitor;
import raft.war.language.jass.psi.compositeElement.JassCompositeElement;

public class JassVisitor extends PsiElementVisitor {

  public void visitAndExpr(@NotNull JassAndExpr o) {
    visitExpr(o);
  }

  public void visitArgList(@NotNull JassArgList o) {
    visitCompositeElement(o);
  }

  public void visitArrayAccess(@NotNull JassArrayAccess o) {
    visitCompositeElement(o);
  }

  public void visitCallStmt(@NotNull JassCallStmt o) {
    visitCompositeElement(o);
  }

  public void visitDivExpr(@NotNull JassDivExpr o) {
    visitExpr(o);
  }

  public void visitDivUnExpr(@NotNull JassDivUnExpr o) {
    visitExpr(o);
  }

  public void visitElseIfStmt(@NotNull JassElseIfStmt o) {
    visitCompositeElement(o);
  }

  public void visitElseStmt(@NotNull JassElseStmt o) {
    visitCompositeElement(o);
  }

  public void visitEqExpr(@NotNull JassEqExpr o) {
    visitExpr(o);
  }

  public void visitExitWhenStmt(@NotNull JassExitWhenStmt o) {
    visitCompositeElement(o);
  }

  public void visitExpr(@NotNull JassExpr o) {
    visitCompositeElement(o);
  }

  public void visitFun(@NotNull JassFun o) {
    visitCompositeElement(o);
  }

  public void visitFunBody(@NotNull JassFunBody o) {
    visitCompositeElement(o);
  }

  public void visitFunCall(@NotNull JassFunCall o) {
    visitCompositeElement(o);
  }

  public void visitFunHead(@NotNull JassFunHead o) {
    visitCompositeElement(o);
  }

  public void visitFunName(@NotNull JassFunName o) {
    visitNamedElement(o);
  }

  public void visitFunRef(@NotNull JassFunRef o) {
    visitCompositeElement(o);
  }

  public void visitFunRet(@NotNull JassFunRet o) {
    visitCompositeElement(o);
  }

  public void visitFunTake(@NotNull JassFunTake o) {
    visitCompositeElement(o);
  }

  public void visitGlob(@NotNull JassGlob o) {
    visitCompositeElement(o);
  }

  public void visitGtEqExpr(@NotNull JassGtEqExpr o) {
    visitExpr(o);
  }

  public void visitGtExpr(@NotNull JassGtExpr o) {
    visitExpr(o);
  }

  public void visitGvar(@NotNull JassGvar o) {
    visitCompositeElement(o);
  }

  public void visitIfStmt(@NotNull JassIfStmt o) {
    visitCompositeElement(o);
  }

  public void visitLoopStmt(@NotNull JassLoopStmt o) {
    visitCompositeElement(o);
  }

  public void visitLtEqExpr(@NotNull JassLtEqExpr o) {
    visitExpr(o);
  }

  public void visitLtExpr(@NotNull JassLtExpr o) {
    visitExpr(o);
  }

  public void visitLvarStmt(@NotNull JassLvarStmt o) {
    visitCompositeElement(o);
  }

  public void visitMinusExpr(@NotNull JassMinusExpr o) {
    visitExpr(o);
  }

  public void visitMinusUnExpr(@NotNull JassMinusUnExpr o) {
    visitExpr(o);
  }

  public void visitMulExpr(@NotNull JassMulExpr o) {
    visitExpr(o);
  }

  public void visitMulUnExpr(@NotNull JassMulUnExpr o) {
    visitExpr(o);
  }

  public void visitNativ(@NotNull JassNativ o) {
    visitCompositeElement(o);
  }

  public void visitNeqExpr(@NotNull JassNeqExpr o) {
    visitExpr(o);
  }

  public void visitNotExpr(@NotNull JassNotExpr o) {
    visitExpr(o);
  }

  public void visitNum(@NotNull JassNum o) {
    visitCompositeElement(o);
  }

  public void visitOrExpr(@NotNull JassOrExpr o) {
    visitExpr(o);
  }

  public void visitParam(@NotNull JassParam o) {
    visitCompositeElement(o);
  }

  public void visitParamList(@NotNull JassParamList o) {
    visitCompositeElement(o);
  }

  public void visitParenExpr(@NotNull JassParenExpr o) {
    visitExpr(o);
  }

  public void visitPlusExpr(@NotNull JassPlusExpr o) {
    visitExpr(o);
  }

  public void visitPlusUnExpr(@NotNull JassPlusUnExpr o) {
    visitExpr(o);
  }

  public void visitPrimExpr(@NotNull JassPrimExpr o) {
    visitExpr(o);
  }

  public void visitReturnStmt(@NotNull JassReturnStmt o) {
    visitCompositeElement(o);
  }

  public void visitSetStmt(@NotNull JassSetStmt o) {
    visitCompositeElement(o);
  }

  public void visitStmt(@NotNull JassStmt o) {
    visitCompositeElement(o);
  }

  public void visitStr(@NotNull JassStr o) {
    visitCompositeElement(o);
  }

  public void visitTypeDef(@NotNull JassTypeDef o) {
    visitCompositeElement(o);
  }

  public void visitTypeExt(@NotNull JassTypeExt o) {
    visitCompositeElement(o);
  }

  public void visitTypeName(@NotNull JassTypeName o) {
    visitNamedElement(o);
  }

  public void visitVarDef(@NotNull JassVarDef o) {
    visitCompositeElement(o);
  }

  public void visitVarName(@NotNull JassVarName o) {
    visitNamedElement(o);
  }

  public void visitNamedElement(@NotNull JassNamedElement o) {
    visitCompositeElement(o);
  }

  public void visitCompositeElement(@NotNull JassCompositeElement o) {
    visitElement(o);
  }

}
