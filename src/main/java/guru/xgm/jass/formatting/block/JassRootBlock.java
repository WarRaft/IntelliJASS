package guru.xgm.jass.formatting.block;

import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.psi.JassTypes;
import org.jetbrains.annotations.NotNull;

public class JassRootBlock extends JassBlock {
    public JassRootBlock(ASTNode myNode, CodeStyleSettings myCodeStyleSettings) {
        super(myNode, null, null, Indent.getNoneIndent(), myCodeStyleSettings);
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        final IElementType type = childNode.getElementType();

        if (type == JassTypes.TYPE_DECL)
            return new JassTypeBlock(childNode, myWrap, myAlignment, myCodeStyleSettings);

        return new JassBlock(childNode, myWrap, myAlignment, myIndent, myCodeStyleSettings);
    }

}
