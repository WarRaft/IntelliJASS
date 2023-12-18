package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.tree.IElementType;

import static guru.xgm.jass.psi.JassTypes.*;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

/**
 * {@link com.intellij.psi.formatter.common.AbstractBlock}
 * <a href="https://plugins.jetbrains.com/docs/intellij/code-formatting.html">...</a>
 */
public class JassTypeBlock extends JassBlock {
    public JassTypeBlock(
            ASTNode myNode,
            CodeStyleSettings myCodeStyleSettings,
            List<Alignment> alignments
    ) {
        super(myNode, Wrap.createWrap(WrapType.NONE, false), null, Indent.getNoneIndent(), myCodeStyleSettings);
        this.aligments = alignments;
    }

    private final List<Alignment> aligments;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        final IElementType type = childNode.getElementType();

        Alignment alignment = null;

        if (type == TYPE_NAME) {
            childNode = childNode.getFirstChildNode();
        }

        if (type == EXTENDS) {
            alignment = aligments.get(0);
        }

        if (type == TYPE_NAME_BASE) {
            childNode = childNode.getFirstChildNode().getFirstChildNode();
        }

        return new JassBlock(childNode, null, alignment, null, myCodeStyleSettings);
    }

    @Nullable
    @Override
    public Spacing getSpacing(@Nullable Block child1, @NotNull Block child2) {
        final ASTNode node2 = ((ASTBlock) child2).getNode();

        assert node2 != null;
        final IElementType type2 = node2.getElementType();

        if (type2 == TYPE) return Spacing.createSpacing(0, 0, 0, false, 0);
        return Spacing.createSafeSpacing(false, 0);
    }

    @Override
    public boolean isIncomplete() {
        final ASTNode lastChildNode = myNode.getLastChildNode();
        return lastChildNode.getElementType() == TYPE_NAME_BASE;
    }
}
