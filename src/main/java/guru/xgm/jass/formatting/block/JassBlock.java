package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.openapi.util.TextRange;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.formatter.FormatterUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;

public class JassBlock implements ASTBlock {

    public JassBlock(ASTNode myNode, Wrap myWrap, Alignment myAlignment, Indent myIndent, CodeStyleSettings myCodeStyleSettings) {
        this.myNode              = myNode;
        this.myWrap              = myWrap;
        this.myAlignment         = myAlignment;
        this.myIndent            = myIndent;
        this.myCodeStyleSettings = myCodeStyleSettings;
    }

    protected final ASTNode           myNode;
    protected final Wrap              myWrap;
    protected final Alignment         myAlignment;
    protected final Indent            myIndent;
    protected final CodeStyleSettings myCodeStyleSettings;
    private         List<Block>       mySubBlocks = null;

    public Block makeSubBlock(@NotNull ASTNode childNode) {
        return new JassBlock(childNode, myWrap, myAlignment, myIndent, myCodeStyleSettings);
    }

    @Override
    public @NotNull List<Block> getSubBlocks() {
        if (mySubBlocks == null) {
            ASTNode[] children = myNode.getChildren(null);
            mySubBlocks = new ArrayList<>(children.length);
            for (ASTNode child : children) {
                if (FormatterUtil.isWhitespaceOrEmpty(child)) continue;
                mySubBlocks.add(makeSubBlock(child));
            }
        }
        return mySubBlocks;
    }

    @Override
    public @Nullable ASTNode getNode() {
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
    public @Nullable Spacing getSpacing(@Nullable Block block, @NotNull Block block1) {
        return null;
    }

    @Override
    public @NotNull ChildAttributes getChildAttributes(int i) {
        return new ChildAttributes(Indent.getNoneIndent(), null);
    }

    @Override
    public boolean isIncomplete() {
        return false;
    }

    @Override
    public boolean isLeaf() {
        return myNode.getFirstChildNode() == null;
    }
}
