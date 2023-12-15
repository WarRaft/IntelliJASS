package guru.xgm.jass.formatting.block;

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

import static guru.xgm.jass.psi.JassTypes.*;

public class JassTypeBlock extends AbstractBlock {

    public JassTypeBlock(
            @NotNull ASTNode node,
            CodeStyleSettings codeStyleSettings
    ) {
        super(node, Wrap.createWrap(WrapType.NONE, false), blockAlignment);
        this.codeStyleSettings = codeStyleSettings;
    }

    @SuppressWarnings({"FieldCanBeLocal", "unused"})
    private final CodeStyleSettings codeStyleSettings;

    private static final Alignment blockAlignment = Alignment.createAlignment(true);

    private static final Alignment typeAlignment = Alignment.createAlignment(true);
    private static final Alignment typeNameAlignment = Alignment.createAlignment(true);
    private static final Alignment typeNameBaseAlignment = Alignment.createAlignment(true);
    private static final Alignment extendsAlignment = Alignment.createAlignment(true);

    @Override
    protected List<Block> buildChildren() {
        List<Block> blocks = new ArrayList<>();
        ASTNode child = myNode.getFirstChildNode();

        while (child != null) {
            ASTNode cur = child;
            final IElementType type = cur.getElementType();
            child = child.getTreeNext();

            if (type == TokenType.WHITE_SPACE) continue;
            Alignment alignment = null;
            Indent indent = Indent.getNoneIndent();

            if (type == TYPE) {
                //alignment = typeAlignment;
            } else if (type == TYPE_NAME) {
                final IElementType nxt = JassBlockUtil.getNextBlockType(cur);
                if (nxt == EXTENDS) {
                    //alignment = typeNameAlignment;
                } else {
                    //alignment = typeNameBaseAlignment;
                }

                cur = cur.getFirstChildNode();
            } else if (type == EXTENDS) {
                alignment = extendsAlignment;
            }

            blocks.add(new JassLeafBlock(cur, null, alignment, indent));
        }
        return blocks;
    }

    @Override
    public Indent getIndent() {
        return Indent.getNoneIndent();
    }

    @SuppressWarnings("CommentedOutCode")
    @Nullable
    @Override
    public Spacing getSpacing(@Nullable Block child1, @NotNull Block child2) {
        //final ASTNode node2 = ((ASTBlock) child2).getNode();
        //assert node2 != null;
        //final IElementType type2 = node2.getElementType();

        //if (type2 == EXTENDS) return null;
        //return null;
        return Spacing.createSafeSpacing(false, 0);
        //return Spacing.createSpacing(1, 1, 0, false, 0);
    }

    @Override
    public boolean isLeaf() {
        return myNode.getFirstChildNode() == null;
    }

}
