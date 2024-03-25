package guru.xgm.language.angelscript.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.openapi.util.TextRange;
import com.intellij.psi.formatter.FormatterUtil;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;
import guru.xgm.language.angelscript.lang.AngelScriptLanguage;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;

public class AngelScriptBlock implements ASTBlock {

    public AngelScriptBlock(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings) {
        this.myNode = myNode;
        this.myWrap = null;
        this.myAlignment = myAlignment;
        this.myIndent = myIndent;
        this.settings = settings;
    }

    protected final ASTNode myNode;
    protected final Wrap myWrap;
    protected final Alignment myAlignment;
    protected final Indent myIndent;
    protected final AngelScriptBlockSettings settings;

    private List<Block> mySubBlocks = null;
    private SpacingBuilder mySpacingBuilder = null;

    public Block makeSubBlock(@NotNull ASTNode childNode, Indent indent) {
        if (isOneOf(childNode, FUN))
            return new AngelScriptBlockFun(childNode, null, indent, settings);

        if (isOneOf(childNode, FOR_STMT))
            return new AngelScriptBlockFor(childNode, null, indent, settings);

        if (isOneOf(childNode, WHILE_STMT))
            return new AngelScriptBlockWhile(childNode, null, indent, settings);

        if (isOneOf(childNode, IF_STMT))
            return new AngelScriptBlockIf(childNode, null, indent, settings);

        if (isOneOf(childNode, ELSE_STMT))
            return new AngelScriptBlockElse(childNode, null, indent, settings);

        if (isOneOf(childNode, ENUMS))
            return new AngelScriptBlockEnum(childNode, null, indent, settings);

        if (isOneOf(childNode, SWITCH_STMT))
            return new AngelScriptBlockSwitch(childNode, null, indent, settings);

        return new AngelScriptBlock(childNode, null, indent, settings);
    }

    @Override
    public @NotNull List<Block> getSubBlocks() {
        if (mySubBlocks == null) {
            ASTNode[] children = myNode.getChildren(null);
            mySubBlocks = new ArrayList<>(children.length);
            for (ASTNode child : children) {
                if (FormatterUtil.isWhitespaceOrEmpty(child)) continue;
                mySubBlocks.add(makeSubBlock(child, Indent.getNoneIndent()));
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
        var sb = new SpacingBuilder(settings.code, AngelScriptLanguage.INSTANCE);

        final int saao = settings.common.SPACE_AROUND_ASSIGNMENT_OPERATORS ? 1 : 0;
        sb = sb.around(EQ).spacing(saao, saao, 0, false, 0)
                .around(PLUS_EQ).spacing(saao, saao, 0, false, 0)
                .around(MINUS_EQ).spacing(saao, saao, 0, false, 0)
                .around(MUL_EQ).spacing(saao, saao, 0, false, 0)
                .around(DIV_EQ).spacing(saao, saao, 0, false, 0);


        //final int sbc = settings.common.SPACE_BEFORE_COMMA ? 1 : 0;
        //sb = sb.before(COMMA).spacing(sbc, sbc, 0, false, 0);

        //final int sac = settings.common.SPACE_AFTER_COMMA ? 1 : 0;
        //sb = sb.after(COMMA).spacing(sac, sac, 0, false, 0);

        return sb
                // generic
                .between(LT, TYPE).spacing(0, 0, 0, false, 0)
                .between(TYPE, GT).spacing(0, 0, 0, false, 0)

                // paren
                .after(LPAREN).spacing(0, 1, 0, true, 0)
                .before(RPAREN).spacing(0, 1, 0, true, 0)
                .before(ARG_LIST).spacing(0, 1, 0, true, 0)

                .around(DOT).spacing(0, 0, 0, false, 0)
                .around(MINUS_GT).spacing(1, 1, 0, false, 0);
    }

    @Override
    public @Nullable Spacing getSpacing(@Nullable Block block1, @NotNull Block block2) {
        if (mySpacingBuilder == null) mySpacingBuilder = getSpacingBuilder();

        final var c2 = ASTBlock.getNode(block2);
        if (isOneOf(c2, IF_STMT) && block1 != null) {
            final var c1 = ASTBlock.getNode(block1);
            return isOneOf(c1, ELSE)
                    ? Spacing.createSpacing(1, 1, 0, false, 0)
                    : Spacing.createSpacing(0, 99, 1, true, 99);
        }

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
