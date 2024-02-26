package guru.xgm.jass.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static com.intellij.psi.formatter.FormatterUtil.isWhitespaceOrEmpty;
import static guru.xgm.jass.formatting.JassCodeStyleSettings.Fields.*;
import static guru.xgm.jass.psi.JassTypes.*;

public class JassNativeBlock extends JassBlock {
    public JassNativeBlock(ASTNode myNode, Indent myIndent, CodeStyleSettings myCodeStyleSettings, JassNativeBlockAligner aligner) {
        super(myNode, null, myIndent, myCodeStyleSettings);
        this.aligner = aligner;
    }

    private final JassNativeBlockAligner aligner;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        Alignment alignment = null;

        if (isOneOf(childNode, NATIVE)) alignment = aligner.named(AT_NATIVE_DECL_NATIVE);
        if (isOneOf(childNode, ID)) {
            childNode = childNode.getFirstChildNode();
            alignment = aligner.named(AT_NATIVE_DECL_NAME);
        }
        if (isOneOf(childNode, TAKES)) alignment = aligner.named(AT_NATIVE_DECL_TAKES);
        if (isOneOf(childNode, RETURNS)) alignment = aligner.named(AT_NATIVE_DECL_RETURNS);

        if (isOneOf(childNode, PARAM)) {
            ASTNode[] children = childNode.getTreeParent().getChildren(null);

            int index = -1;
            for (ASTNode child : children) {
                if (isWhitespaceOrEmpty(child)) continue;
                if (childNode.getElementType() != child.getElementType()) continue;
                index++;
                if (childNode != child) continue;
                alignment = aligner.argument(index);
                break;
            }
        }

        if (isOneOf(childNode, FUN_TAKE, FUN_RET, PARAM_LIST))
            return new JassNativeBlock(childNode, null, myCodeStyleSettings, aligner);

        return new JassBlock(childNode, alignment, null, myCodeStyleSettings);
    }
}
