package guru.xgm.language.zinc.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.openapi.util.TextRange;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.formatter.FormatterUtil;
import guru.xgm.language.zinc.lang.ZincLanguage;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;

import static guru.xgm.language.zinc.psi.ZincTypes.*;
import static com.intellij.psi.formatter.FormatterUtil.isOneOf;

public class ZincBlock implements ASTBlock {

    public ZincBlock(ASTNode myNode, Alignment myAlignment, Indent myIndent, CodeStyleSettings codeStyleSettings) {
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

        if (isOneOf(childNode,
                EXPR_STMT,
                FOR_STMT,
                IF_STMT,
                RETURN_STMT,
                VAR_DEF,
                DO_STMT,
                WHILE_STMT,
                BREAK_STMT,
                // def
                LIB_VIS_DEF,
                VAR_DEF,
                STRUCT_DEF,
                METHOD_DEF,
                FUNC_DEF
        )) indent = Indent.getNormalIndent();

        return new ZincBlock(childNode, null, indent, myCodeStyleSettings);
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
        //final CommonCodeStyleSettings code = myCodeStyleSettings.getCommonSettings(ZincLanguage.INSTANCE.getID());
        return new SpacingBuilder(myCodeStyleSettings, ZincLanguage.INSTANCE)
                // paren
                .after(LPAREN).spacing(0, 1, 0, true, 0)
                .before(RPAREN).spacing(0, 1, 0, true, 0)
                .before(ARGS).spacing(0, 1, 0, true, 0)
                // comma
                .after(COMMA).spacing(1, 1, 0, false, 0)
                .before(COMMA).spacing(0, 0, 0, false, 0)


                .around(DOT).spacing(0, 0, 0, false, 0)
                .around(EQ).spacing(1, 1, 0, false, 0)
                .around(MINUS_GT).spacing(1, 1, 0, false, 0)
                .around(FUNC_RETURNS).spacing(1, 1, 0, false, 0)
                .between(TYPE_NAME, ID).spacing(1, 1, 0, false, 0)
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
