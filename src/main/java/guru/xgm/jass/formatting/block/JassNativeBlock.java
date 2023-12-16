package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.tree.IElementType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

import static guru.xgm.jass.psi.JassTypes.*;

public class JassNativeBlock extends JassBlock {
    public JassNativeBlock(ASTNode myNode, Wrap myWrap, List<Alignment> alignments, Indent myIndent, CodeStyleSettings myCodeStyleSettings) {
        super(myNode, myWrap, null, myIndent, myCodeStyleSettings);
        this.alignments = alignments;
    }

    private final List<Alignment> alignments;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        final IElementType type = childNode.getElementType();

        Alignment alignment = null;

        if (type == NATIVE) alignment = alignments.get(0);
        if (type == TAKES) alignment = alignments.get(1);
        if (type == RETURNS) alignment = alignments.get(2);

        if (type == FUNC_TAKES || type == FUNC_RETURNS) return new JassNativeBlock(childNode, null, alignments, null, myCodeStyleSettings);

        return new JassBlock(childNode, null, alignment, null, myCodeStyleSettings);
    }

    @Nullable
    @Override
    public Spacing getSpacing(@Nullable Block child1, @NotNull Block child2) {
        return Spacing.createSafeSpacing(false, 0);
    }
}
