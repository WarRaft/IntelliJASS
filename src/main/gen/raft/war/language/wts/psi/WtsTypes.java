// This is a generated file. Not intended for manual editing.
package raft.war.language.wts.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import raft.war.language.wts.psi.tree.WtsIElement;
import raft.war.language.wts.psi.tree.WtsIToken;
import raft.war.language.wts.psi.impl.*;

public interface WtsTypes {

  IElementType ITEM = new WtsIElement("ITEM");

  IElementType ID = new WtsIToken("ID");
  IElementType LINE_COMMENT = new WtsIToken("LINE_COMMENT");
  IElementType STRING = new WtsIToken("STRING");
  IElementType VALUE = new WtsIToken("VALUE");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == ITEM) {
        return new WtsItemImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
