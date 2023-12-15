package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.openapi.util.TextRange;
import com.intellij.psi.TokenType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;

public class JassLeafBlock implements ASTBlock {
    private final ASTNode myNode;
    private final Alignment myAlignment;
    private final Indent myIndent;
    private final Wrap myWrap;
    private List<Block> mySubBlocks = null;

    public JassLeafBlock(@NotNull ASTNode node,
                         @Nullable Wrap wrap,
                         @Nullable Alignment alignment,
                         @NotNull Indent indent
    ) {
        myNode = node;
        myAlignment = alignment;
        myIndent = indent;
        myWrap = wrap;
    }

    @Override
    public @NotNull List<Block> getSubBlocks() {
        if (mySubBlocks == null) {
            ASTNode[] children = myNode.getChildren(null);
            mySubBlocks = new ArrayList<>(children.length);
            for (ASTNode child : children) {
                if (isWhitespaceOrEmpty(child)) continue;
                mySubBlocks.add(makeSubBlock(child));
            }
        }
        return mySubBlocks;
    }

    private Block makeSubBlock(@NotNull ASTNode childNode) {
        return new JassLeafBlock(childNode, myWrap, myAlignment, myIndent);
    }

    @Override
    public boolean isIncomplete() {
        final ASTNode lastChildNode = myNode.getLastChildNode();
        /*
        if (hasElementType(myNode, OBJECT)) {
            return lastChildNode != null && lastChildNode.getElementType() != R_CURLY;
        } else if (hasElementType(myNode, ARRAY)) {
            return lastChildNode != null && lastChildNode.getElementType() != R_BRACKET;
        } else if (hasElementType(myNode, PROPERTY)) {
            return ((JsonProperty) myPsiElement).getValue() == null;
        }
         */
        return false;
    }

    @Override
    public @NotNull ChildAttributes getChildAttributes(int newChildIndex) {
        return new ChildAttributes(null, null);
    }

    @Override
    public ASTNode getNode() {
        return myNode;
    }

    @Override
    public @NotNull TextRange getTextRange() {
        return myNode.getTextRange();
    }

    @Override
    public @Nullable Wrap getWrap() {
        return myWrap;
    }

    @Override
    public @Nullable Indent getIndent() {
        return myIndent;
    }

    @Override
    public @Nullable Alignment getAlignment() {
        return myAlignment;
    }

    @Override
    public @Nullable Spacing getSpacing(@Nullable Block child1, @NotNull Block child2) {
        return null;
    }

    @Override
    public boolean isLeaf() {
        return myNode.getFirstChildNode() == null;
    }

    private static boolean isWhitespaceOrEmpty(ASTNode node) {
        return node.getElementType() == TokenType.WHITE_SPACE || node.getTextLength() == 0;
    }

}
