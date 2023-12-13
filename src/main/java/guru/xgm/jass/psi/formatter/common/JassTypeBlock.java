package guru.xgm.jass.psi.formatter.common;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.TokenType;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.formatter.common.AbstractBlock;
import com.intellij.psi.tree.IElementType;

import static guru.xgm.jass.psi.JassTypes.*;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;

public class JassTypeBlock extends AbstractBlock {
    public JassTypeBlock(
            @NotNull ASTNode node,
            @Nullable Wrap wrap,
            @Nullable Alignment alignment,
            CodeStyleSettings codeStyleSettings
    ) {
        super(node, wrap, alignment);
        this.codeStyleSettings = codeStyleSettings;
    }

    private final CodeStyleSettings codeStyleSettings;



    private static final Alignment extendsAlignment = Alignment.createAlignment();
    private static final Alignment typeNameAlignment = Alignment.createAlignment();


    @Override
    protected List<Block> buildChildren() {
        List<Block> blocks = new ArrayList<>();
        ASTNode child = myNode.getFirstChildNode();

        while (child != null) {
            final IElementType type = child.getElementType();

            if (type == TokenType.WHITE_SPACE) {
                child = child.getTreeNext();
                continue;
            }

            System.out.print("\n type: " + type + "\n" + (TYPE_NAME == type) + "\n");

            if (type == TYPE_NAME) {
                blocks.add(new JassTypeBlock(child, null, typeNameAlignment, codeStyleSettings));
            } else if (type == EXTENDS) {
                blocks.add(new JassTypeBlock(child, null, extendsAlignment, codeStyleSettings));
            } else {
                blocks.add(new JassTypeBlock(child, null, null, codeStyleSettings));
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
        /*
        ASTNode node1 = child1 != null ? ((ASTBlock) child1).getNode() : null;
        ASTNode node2 = ((ASTBlock) child2).getNode();

        System.out.print("\n---- spacing\n");
        System.out.print(node1);
        System.out.print(node2);
         */
        return Spacing.createSpacing(1, 1, 0, false, 0);
    }

    @Override
    public boolean isLeaf() {
        return myNode.getFirstChildNode() == null;
    }

}
