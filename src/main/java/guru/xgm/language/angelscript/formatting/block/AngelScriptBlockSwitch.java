package guru.xgm.language.angelscript.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockBraceParent;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.SWITCH_STAT_BLOCK;

public class AngelScriptBlockSwitch extends AngelScriptBlockBraceParent {
    public AngelScriptBlockSwitch(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings) {
        super(myNode, myAlignment, myIndent, settings);
        braceStyle = settings.common.BRACE_STYLE;
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode, Indent indent) {
        if (isOneOf(childNode, SWITCH_STAT_BLOCK))
            return new AngelScriptBlockSwitchStat(childNode, null, null, settings, braceStyle);

        return super.makeSubBlock(childNode, indent);
    }
}
