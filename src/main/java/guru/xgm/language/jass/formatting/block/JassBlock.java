package guru.xgm.language.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.openapi.util.TextRange;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CommonCodeStyleSettings;
import com.intellij.psi.formatter.FormatterUtil;
import guru.xgm.language.jass.lang.JassLanguage;

import static guru.xgm.language.jass.psi.JassTypes.*;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;

public class JassBlock implements ASTBlock {

    public JassBlock(ASTNode myNode, Alignment myAlignment, Indent myIndent, CodeStyleSettings codeStyleSettings) {
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
        //final IElementType type = childNode.getElementType();
        return new JassBlock(childNode, null, null, myCodeStyleSettings);
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
        final CommonCodeStyleSettings code = myCodeStyleSettings.getCommonSettings(JassLanguage.INSTANCE.getID());

        final int sac = code.SPACE_AFTER_COMMA ? 1 : 0;
        final int sbc = code.SPACE_BEFORE_COMMA ? 1 : 0;
        final int saao = code.SPACE_AROUND_ASSIGNMENT_OPERATORS ? 1 : 0;

        return new SpacingBuilder(myCodeStyleSettings, JassLanguage.INSTANCE)
                .after(COMMA).spacing(sac, sac, 0, false, 0)
                .before(COMMA).spacing(sbc, sbc, 0, false, 0)
                .around(EQ).spacing(saao, saao, 0, false, 0)
                .between(TYPE_NAME, ID).spacing(1, 1, 0, false, 0)
                .around(NATIVE).spacing(1, 1, 0, false, 0)
                .around(FUN_TAKE).spacing(1, 1, 0, false, 0)
                .around(TAKES).spacing(1, 1, 0, false, 0)
                .after(RETURNS).spacing(1, 1, 0, false, 0)
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
