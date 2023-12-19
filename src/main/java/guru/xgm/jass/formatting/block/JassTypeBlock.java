package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.formatting.JassCodeStyleSettings;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.HashMap;

import static guru.xgm.jass.formatting.JassCodeStyleSettings.Fields.*;
import static guru.xgm.jass.psi.JassTypes.*;

/**
 * {@link com.intellij.psi.formatter.common.AbstractBlock}
 * <a href="https://plugins.jetbrains.com/docs/intellij/code-formatting.html">...</a>
 */
public class JassTypeBlock extends JassBlock {
    public JassTypeBlock(
            ASTNode myNode,
            CodeStyleSettings myCodeStyleSettings,
            HashMap<String, Alignment> alignments
    ) {
        super(myNode, Wrap.createWrap(WrapType.NONE, false), null, Indent.getNoneIndent(), myCodeStyleSettings);
        this.aligments = alignments;
    }

    private final HashMap<String, Alignment> aligments;

    static HashMap<String, Alignment> getAlignments(JassCodeStyleSettings jass) {
        final HashMap<String, Alignment> map = new HashMap<>();

        if (jass.AT_TYPE_DECL_TYPE_RIGHT) map.put(AT_TYPE_DECL_TYPE_RIGHT, Alignment.createAlignment(true, Alignment.Anchor.RIGHT));
        if (jass.AT_TYPE_DECL_EXTENDS) map.put(AT_TYPE_DECL_EXTENDS, Alignment.createAlignment(true));
        if (jass.AT_TYPE_DECL_TYPE_BASE_RIGHT) map.put(AT_TYPE_DECL_TYPE_BASE_RIGHT, Alignment.createAlignment(true, Alignment.Anchor.RIGHT));

        return map;
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        final IElementType type = childNode.getElementType();

        Alignment alignment = null;

        if (type == TYPE_NAME) {
            alignment = aligments.get(AT_TYPE_DECL_TYPE_RIGHT);
            childNode = childNode.getFirstChildNode();
        }

        if (type == EXTENDS) {
            alignment = aligments.get(AT_TYPE_DECL_EXTENDS);
        }

        if (type == TYPE_NAME_BASE) {
            alignment = aligments.get(AT_TYPE_DECL_TYPE_BASE_RIGHT);
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
