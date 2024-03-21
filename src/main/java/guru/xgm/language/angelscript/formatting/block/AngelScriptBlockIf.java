package guru.xgm.language.angelscript.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Indent;
import com.intellij.formatting.SpacingBuilder;
import com.intellij.lang.ASTNode;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockBraceParent;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;

import static com.intellij.psi.codeStyle.CommonCodeStyleSettings.END_OF_LINE;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.ELSE_STMT;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.STAT_BLOCK;

public class AngelScriptBlockIf extends AngelScriptBlockBraceParent {
    public AngelScriptBlockIf(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings) {
        super(myNode, myAlignment, myIndent, settings);
        braceStyle = settings.common.BRACE_STYLE;
    }

    @Override
    protected SpacingBuilder getSpacingBuilder() {
        return super.getSpacingBuilder()
                .between(STAT_BLOCK, ELSE_STMT).spacing(1, 1, braceStyle == END_OF_LINE ? 0 : 1, false, 0);
    }
}
