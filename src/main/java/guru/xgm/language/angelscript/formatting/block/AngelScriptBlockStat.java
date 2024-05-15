package guru.xgm.language.angelscript.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.formatting.SpacingBuilder;
import com.intellij.lang.ASTNode;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import static com.intellij.psi.codeStyle.CommonCodeStyleSettings.*;
import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;

public class AngelScriptBlockStat extends AngelScriptBlock {
    public AngelScriptBlockStat(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings, int braceStyle) {
        super(myNode, myAlignment, myIndent, settings);
        this.braceStyle = braceStyle;
    }

    private final int braceStyle;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode, Indent indent) {
        if (isOneOf(childNode, LBRACE, RBRACE)) {
            return new AngelScriptBlockStatBrace(childNode, null, null, settings, braceStyle);
        }
        return super.makeSubBlock(childNode, Indent.getNormalIndent());
    }

    @Override
    public @Nullable Indent getIndent() {
        return switch (braceStyle) {
            case END_OF_LINE, NEXT_LINE_SHIFTED2 -> Indent.getNormalIndent();
            case NEXT_LINE, NEXT_LINE_IF_WRAPPED, NEXT_LINE_SHIFTED -> Indent.getNoneIndent();
            default -> super.getIndent();
        };
    }

    @Override
    protected SpacingBuilder getSpacingBuilder() {
        return super.getSpacingBuilder()
                .after(LBRACE).spacing(1, 1, 1, false, 1)
                .before(RBRACE).spacing(1, 1, 1, false, 1);
    }
}
