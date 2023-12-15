package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.TokenType;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.formatter.common.AbstractBlock;
import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.psi.JassTypes;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;

public class JassRootOldBlock extends AbstractBlock {
    private final CodeStyleSettings codeStyleSettings;

    public JassRootOldBlock(
            @NotNull ASTNode node,
            CodeStyleSettings codeStyleSettings
    ) {
        super(node, null, null);
        this.codeStyleSettings = codeStyleSettings;
    }

    @Override
    protected List<Block> buildChildren() {
        List<Block> blocks = new ArrayList<>();
        ASTNode child = myNode.getFirstChildNode();

        while (child != null) {
            final ASTNode cur = child;
            final IElementType type = cur.getElementType();
            child = child.getTreeNext();

            if (type == TokenType.WHITE_SPACE) continue;

            if (type == JassTypes.TYPE_DECL) {
                blocks.add(new JassTypeBlock(cur, codeStyleSettings));
                continue;
            }

            blocks.add(new JassLeafOldBlock(cur, null, null, Indent.getNoneIndent()));
        }
        return blocks;
    }

    @Override
    public Indent getIndent() {
        return Indent.getNoneIndent();
    }

    @Nullable
    @Override
    public Spacing getSpacing(@Nullable Block child1, @NotNull Block child2) {
        return null;
    }

    @Override
    public boolean isLeaf() {
        return myNode.getFirstChildNode() == null;
    }
}
