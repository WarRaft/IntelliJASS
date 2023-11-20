package guru.xgm.jass.psi.formatter.common;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.TokenType;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.formatter.common.AbstractBlock;
import com.intellij.psi.tree.IElementType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;

public class JassAbstractBlock extends AbstractBlock {

    private final SpacingBuilder spacingBuilder;
    private final CodeStyleSettings codeStyleSettings;

    public JassAbstractBlock(
            @NotNull ASTNode node,
            @Nullable Wrap wrap,
            @Nullable Alignment alignment,
            CodeStyleSettings codeStyleSettings,
            SpacingBuilder spacingBuilder
    ) {
        super(node, wrap, alignment);
        this.codeStyleSettings = codeStyleSettings;
        this.spacingBuilder = spacingBuilder;
    }

    @Override
    protected List<Block> buildChildren() {
        List<Block> blocks = new ArrayList<>();
        ASTNode child = myNode.getFirstChildNode();

        while (child != null) {
            final IElementType type = child.getElementType();
            if (type != TokenType.WHITE_SPACE) {
                blocks.add(
                        new JassAbstractBlock(
                                child,
                                Wrap.createWrap(WrapType.NONE, false),
                                Alignment.createAlignment(),
                                codeStyleSettings,
                                spacingBuilder
                        )
                );
            }
            child = child.getTreeNext();
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
        return spacingBuilder.getSpacing(this, child1, child2);
    }

    @Override
    public boolean isLeaf() {
        return myNode.getFirstChildNode() == null;
    }

}
