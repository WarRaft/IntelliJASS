package guru.xgm.language.angelscript.formatting.block.utils;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.formatting.SpacingBuilder;
import com.intellij.lang.ASTNode;
import guru.xgm.language.angelscript.formatting.block.AngelScriptBlock;
import guru.xgm.language.angelscript.formatting.block.AngelScriptBlockStat;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.codeStyle.CommonCodeStyleSettings.*;
import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;

public abstract class AngelScriptBlockBraceParent extends AngelScriptBlock {
    public AngelScriptBlockBraceParent(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings) {
        super(myNode, myAlignment, myIndent, settings);
    }

    protected int braceStyle;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode, Indent indent) {
        if (isOneOf(childNode, STAT_BLOCK))
            return new AngelScriptBlockStat(childNode, null, null, settings, braceStyle);
        return super.makeSubBlock(childNode, indent);
    }

    @Override
    protected SpacingBuilder getSpacingBuilder() {
        var sb = super.getSpacingBuilder();
        switch (braceStyle) {
            case END_OF_LINE:
                sb = sb
                        .before(STAT_BLOCK).spacing(1, 1, 0, false, 0)
                        .before(ENUM_STAT_BLOCK).spacing(1, 1, 0, false, 0)
                        .before(SWITCH_STAT_BLOCK).spacing(1, 1, 0, false, 0);
            case NEXT_LINE, NEXT_LINE_IF_WRAPPED, NEXT_LINE_SHIFTED, NEXT_LINE_SHIFTED2:
                sb = sb
                        .before(STAT_BLOCK).spacing(1, 1, 1, false, 0)
                        .before(ENUM_STAT_BLOCK).spacing(1, 1, 1, false, 0)
                        .before(SWITCH_STAT_BLOCK).spacing(1, 1, 1, false, 0);
        }
        return sb;
    }

}
