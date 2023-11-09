// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jass.psi.tree.IElementTypeJASS_Element;
import guru.xgm.jass.psi.tree.IElementTypeJASS_Token;
import guru.xgm.jass.psi.impl.*;

public interface TypesJASS {

    IElementType PROPERTY = new IElementTypeJASS_Element("PROPERTY");
    IElementType COMMENT = new IElementTypeJASS_Token("COMMENT");
    IElementType CRLF = new IElementTypeJASS_Token("CRLF");
    IElementType KEY = new IElementTypeJASS_Token("KEY");
    IElementType SEPARATOR = new IElementTypeJASS_Token("SEPARATOR");
    IElementType VALUE = new IElementTypeJASS_Token("VALUE");

    class Factory {
        public static PsiElement createElement(ASTNode node) {
            IElementType type = node.getElementType();
            if (type == PROPERTY) {
                return new JASSPropertyImpl(node);
            }
            throw new AssertionError("Unknown element type: " + type);
        }
    }
}
