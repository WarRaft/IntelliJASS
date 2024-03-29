package guru.xgm.language.lni.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.openapi.util.TextRange;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.formatter.FormatterUtil;
import guru.xgm.language.lni.lang.LniLanguage;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;

import static guru.xgm.language.lni.psi.LniTypes.EQ;

public class LniBlock implements ASTBlock {

    public LniBlock(ASTNode myNode, Alignment myAlignment, Indent myIndent, CodeStyleSettings codeStyleSettings) {
        this.myNode = myNode;
        this.myWrap = null;
        this.myAlignment = myAlignment;
        this.myIndent = myIndent;
        this.myCodeStyleSettings = codeStyleSettings;
    }

    protected final ASTNode myNode;
    protected final Wrap myWrap;
    protected final Alignment myAlignment;
    protected final Indent myIndent;
    protected final CodeStyleSettings myCodeStyleSettings;
    private List<Block> mySubBlocks = null;
    private SpacingBuilder mySpacingBuilder = null;

    public Block makeSubBlock(@NotNull ASTNode childNode) {
        Indent indent = Indent.getNoneIndent();
        //if (isOneOf(childNode, STMT)) indent = Indent.getNormalIndent();
        return new LniBlock(childNode, null, indent, myCodeStyleSettings);
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

    protected SpacingBuilder getSpacingBuilder() {
        //final CommonCodeStyleSettings code = myCodeStyleSettings.getCommonSettings(AngelScriptLanguage.INSTANCE.getID());
        return new SpacingBuilder(myCodeStyleSettings, LniLanguage.INSTANCE)
                .around(EQ).spacing(1, 1, 0, false, 0)
                ;
    }

    @Override
    public @Nullable Spacing getSpacing(@Nullable Block block1, @NotNull Block block2) {
        if (mySpacingBuilder == null) mySpacingBuilder = getSpacingBuilder();
        return mySpacingBuilder.getSpacing(this, block1, block2);
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
