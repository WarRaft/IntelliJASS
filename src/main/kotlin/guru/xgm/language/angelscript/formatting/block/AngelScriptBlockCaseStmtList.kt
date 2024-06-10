package guru.xgm.language.angelscript.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import static com.intellij.psi.codeStyle.CommonCodeStyleSettings.NEXT_LINE;
import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;

public class AngelScriptBlockCaseStmtList extends AngelScriptBlock {
    public AngelScriptBlockCaseStmtList(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings) {
        super(myNode, myAlignment, myIndent, settings);
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode, Indent indent) {
        if (isOneOf(childNode, STAT_BLOCK))
            return new AngelScriptBlockStat(childNode, null, Indent.getNormalIndent(), settings, NEXT_LINE);

        return super.makeSubBlock(childNode, indent);
    }

    @Override
    public @Nullable Indent getIndent() {
        return settings.common.INDENT_CASE_FROM_SWITCH ? Indent.getNormalIndent() : Indent.getNoneIndent();
    }

    @Override
    public @Nullable Spacing getSpacing(@Nullable Block block1, @NotNull Block block2) {
        return Spacing.createSpacing(1, 5, 1, true, 5);
    }
}
