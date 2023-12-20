package guru.xgm.jass.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.formatting.Wrap;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.formatter.FormatterUtil;
import com.intellij.psi.tree.IElementType;
import org.jetbrains.annotations.NotNull;

import static guru.xgm.jass.formatting.JassCodeStyleSettings.Fields.*;
import static guru.xgm.jass.psi.JassTypes.*;

public class JassNativeBlock extends JassBlock {
    public JassNativeBlock(ASTNode myNode, Wrap myWrap, Indent myIndent, CodeStyleSettings myCodeStyleSettings, JassNativeBlockAligner aligner) {
        super(myNode, myWrap, null, myIndent, myCodeStyleSettings);
        this.aligner = aligner;
    }

    private final JassNativeBlockAligner aligner;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        final IElementType type = childNode.getElementType();

        Alignment alignment = null;

        if (type == NATIVE) alignment = aligner.named(AT_NATIVE_DECL_NATIVE);
        if (type == FUNC_DECL_NAME) {
            childNode = childNode.getFirstChildNode();
            alignment = aligner.named(AT_NATIVE_DECL_NAME);
        }
        if (type == TAKES) alignment = aligner.named(AT_NATIVE_DECL_TAKES);
        if (type == RETURNS) alignment = aligner.named(AT_NATIVE_DECL_RETURNS);

        if (type == TYPED_VAR) {
            ASTNode[] children = childNode.getTreeParent().getChildren(null);

            int index = -1;
            for (ASTNode child : children) {
                if (FormatterUtil.isWhitespaceOrEmpty(child)) continue;
                final IElementType ctype = child.getElementType();
                if (type != ctype) continue;
                index++;
                if (childNode != child) continue;
                alignment = aligner.argument(index);
                break;
            }
        }

        if (type == FUNC_TAKES || type == FUNC_RETURNS || type == TYPED_VAR_LIST) return new JassNativeBlock(childNode, null, null, myCodeStyleSettings, aligner);

        return new JassBlock(childNode, null, alignment, null, myCodeStyleSettings);
    }
}
