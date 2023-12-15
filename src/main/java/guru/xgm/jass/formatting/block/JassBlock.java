package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.openapi.util.TextRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public abstract class JassBlock implements ASTBlock {
    @Override
    public @Nullable ASTNode getNode() {
        return null;
    }

    @Override
    public @NotNull TextRange getTextRange() {
        return null;
    }

    @Override
    public @NotNull List<Block> getSubBlocks() {
        return null;
    }

    @Override
    public @Nullable Wrap getWrap() {
        return null;
    }

    @Override
    public @Nullable Indent getIndent() {
        return null;
    }

    @Override
    public @Nullable Alignment getAlignment() {
        return null;
    }

    @Override
    public @Nullable Spacing getSpacing(@Nullable Block block, @NotNull Block block1) {
        return null;
    }

    @Override
    public @NotNull ChildAttributes getChildAttributes(int i) {
        return null;
    }

    @Override
    public boolean isIncomplete() {
        return false;
    }

    @Override
    public boolean isLeaf() {
        return false;
    }
}
