// This is a generated file. Not intended for manual editing.
package guru.xgm.language.lni.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.language.lni.psi.tree.LniIElement;
import guru.xgm.language.lni.psi.tree.LniIToken;
import guru.xgm.language.lni.psi.impl.*;

public interface LniTypes {

  IElementType HEAD = new LniIElement("HEAD");
  IElementType ITEM = new LniIElement("ITEM");
  IElementType LIST = new LniIElement("LIST");
  IElementType LIST_ITEM = new LniIElement("LIST_ITEM");
  IElementType NUMBER = new LniIElement("NUMBER");
  IElementType PRIM = new LniIElement("PRIM");
  IElementType PROPERTY = new LniIElement("PROPERTY");
  IElementType STRING = new LniIElement("STRING");

  IElementType COMMA = new LniIToken(",");
  IElementType EQ = new LniIToken("=");
  IElementType HEADVAL = new LniIToken("HEADVAL");
  IElementType HEXVAL = new LniIToken("HEXVAL");
  IElementType ID = new LniIToken("ID");
  IElementType INTVAL = new LniIToken("INTVAL");
  IElementType LBRACE = new LniIToken("{");
  IElementType LBRACK = new LniIToken("[");
  IElementType LPAREN = new LniIToken("(");
  IElementType MINUS = new LniIToken("-");
  IElementType RBRACE = new LniIToken("}");
  IElementType RBRACK = new LniIToken("]");
  IElementType REALVAL = new LniIToken("REALVAL");
  IElementType RPAREN = new LniIToken(")");
  IElementType SINGLE_LINE_COMMENT = new LniIToken("SINGLE_LINE_COMMENT");
  IElementType STRVAL = new LniIToken("STRVAL");
  IElementType STRVAL_MULT = new LniIToken("STRVAL_MULT");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == HEAD) {
        return new LniHeadImpl(node);
      }
      else if (type == ITEM) {
        return new LniItemImpl(node);
      }
      else if (type == LIST) {
        return new LniListImpl(node);
      }
      else if (type == LIST_ITEM) {
        return new LniListItemImpl(node);
      }
      else if (type == NUMBER) {
        return new LniNumberImpl(node);
      }
      else if (type == PRIM) {
        return new LniPrimImpl(node);
      }
      else if (type == PROPERTY) {
        return new LniPropertyImpl(node);
      }
      else if (type == STRING) {
        return new LniStringImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
