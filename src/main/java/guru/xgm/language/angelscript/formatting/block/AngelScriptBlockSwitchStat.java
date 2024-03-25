package guru.xgm.language.angelscript.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.CASE_STMT;

public class AngelScriptBlockSwitchStat extends AngelScriptBlockStat {
    public AngelScriptBlockSwitchStat(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings, int braceStyle) {
        super(myNode, myAlignment, myIndent, settings, braceStyle);
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode, Indent indent) {
        if (isOneOf(childNode, CASE_STMT))
            return new AngelScriptBlockCase(childNode, null, null, settings);

        return super.makeSubBlock(childNode, indent);
    }
}
