package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.tree.IElementType;

import static guru.xgm.jass.psi.JassTypes.*;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/**
 * {@link com.intellij.psi.formatter.common.AbstractBlock}
 */
public class JassTypeBlock extends JassBlock {
    public JassTypeBlock(ASTNode myNode, Wrap myWrap, Alignment myAlignment, CodeStyleSettings myCodeStyleSettings) {
        super(myNode, myWrap, myAlignment, Indent.getNoneIndent(), myCodeStyleSettings);
    }

    private static final Alignment alignmentA = Alignment.createAlignment(true);
    private static final Alignment alignmentB = Alignment.createAlignment(true);

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        final IElementType type = childNode.getElementType();

        Alignment alignment = null;
        Wrap wrap = null;

        if (type == TYPE) {
            alignment = alignmentA;
            wrap = Wrap.createWrap(WrapType.NONE, false);
        }

        if (type == TYPE_NAME) {
            alignment = alignmentB;
            childNode = childNode.getFirstChildNode();
        }

        if (type == EXTENDS) {
            alignment = alignmentA;
            wrap = Wrap.createWrap(WrapType.NONE, false);
        }

        if (type == TYPE_NAME_BASE) {
            childNode = childNode.getFirstChildNode().getFirstChildNode();
        }

        return new JassBlock(childNode, wrap, alignment, myIndent, myCodeStyleSettings);
    }

    @Nullable
    @Override
    public Spacing getSpacing(@Nullable Block child1, @NotNull Block child2) {
        //final ASTNode node1 = child1 != null ? ((ASTBlock) child1).getNode() : null;
        final ASTNode node2 = ((ASTBlock) child2).getNode();

        //final IElementType type1 = node1 != null ? node1.getElementType() : null;
        assert node2 != null;
        final IElementType type2 = node2.getElementType();

        if (type2 == TYPE) return Spacing.createKeepingFirstColumnSpacing(0, 0, false, 0);
        return Spacing.createSafeSpacing(false, 0);
    }

    @Override
    public boolean isIncomplete() {
        final ASTNode lastChildNode = myNode.getLastChildNode();
        return lastChildNode.getElementType() == TYPE_NAME_BASE;
    }
}
