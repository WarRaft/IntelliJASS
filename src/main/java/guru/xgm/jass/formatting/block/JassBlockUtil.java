package guru.xgm.jass.formatting.block;

import com.intellij.lang.ASTNode;
import com.intellij.psi.TokenType;
import com.intellij.psi.tree.IElementType;
import org.jetbrains.annotations.Nullable;

public class JassBlockUtil {

    static @Nullable IElementType getNextBlockType(ASTNode child) {
        ASTNode nxt = child.getTreeNext();
        while (nxt != null) {
            final IElementType type = nxt.getElementType();
            if (type != TokenType.WHITE_SPACE) return type;
            nxt = nxt.getTreeNext();
        }
        return null;
    }
}
