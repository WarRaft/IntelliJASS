package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.tree.IElementType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Arrays;
import java.util.List;

import static guru.xgm.jass.psi.JassTypes.NATIVE_DECL;
import static guru.xgm.jass.psi.JassTypes.TYPE_DECL;

public class JassRootBlock extends JassBlock {
    public JassRootBlock(ASTNode myNode, CodeStyleSettings myCodeStyleSettings) {
        super(myNode, null, null, Indent.getNoneIndent(), myCodeStyleSettings);
    }

    final Alignment typeExtendsAlignment = Alignment.createAlignment(true);

    final List<Alignment> nativeAlignments = Arrays.asList(
            Alignment.createAlignment(true),
            Alignment.createAlignment(true),
            Alignment.createAlignment(true)
    );

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        final IElementType type = childNode.getElementType();

        if (type == TYPE_DECL) return new JassTypeBlock(childNode, myCodeStyleSettings, typeExtendsAlignment);
        if (type == NATIVE_DECL) return new JassNativeBlock(childNode, Wrap.createWrap(WrapType.NONE, false), nativeAlignments, Indent.getNoneIndent(), myCodeStyleSettings);

        return new JassBlock(childNode, myWrap, myAlignment, myIndent, myCodeStyleSettings);
    }

    @Nullable
    @Override
    public Spacing getSpacing(@Nullable Block child1, @NotNull Block child2) {
        final ASTNode node1 = child1 != null ? ((ASTBlock) child1).getNode() : null;
        final ASTNode node2 = ((ASTBlock) child2).getNode();

        final IElementType type1 = node1 != null ? node1.getElementType() : null;
        assert node2 != null;
        final IElementType type2 = node2.getElementType();

        //System.out.print("\n" + type1 + " | " + type2);

        if (type1 == null && type2 == TYPE_DECL) return Spacing.createSpacing(0, 0, 0, false, 0);
        if (type1 == TYPE_DECL && type2 == TYPE_DECL) return Spacing.createSpacing(0, 0, 1, true, 2);

        return null;
    }

}
