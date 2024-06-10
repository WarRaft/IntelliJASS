package guru.xgm.language.angelscript.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;
import org.jetbrains.annotations.Nullable;

import static com.intellij.psi.codeStyle.CommonCodeStyleSettings.*;

public class AngelScriptBlockStatBrace extends AngelScriptBlock {
    public AngelScriptBlockStatBrace(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings, int braceStyle) {
        super(myNode, myAlignment, myIndent, settings);
        this.braceStyle = braceStyle;
    }

    private final int braceStyle;

    @Override
    public @Nullable Indent getIndent() {
        return switch (braceStyle) {
            case NEXT_LINE_SHIFTED -> Indent.getNormalIndent();
            case END_OF_LINE, NEXT_LINE, NEXT_LINE_IF_WRAPPED, NEXT_LINE_SHIFTED2 -> Indent.getNoneIndent();
            default -> super.getIndent();
        };
    }
}
