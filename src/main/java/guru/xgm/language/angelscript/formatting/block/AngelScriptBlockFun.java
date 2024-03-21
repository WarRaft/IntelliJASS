package guru.xgm.language.angelscript.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockBraceParent;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;

public class AngelScriptBlockFun extends AngelScriptBlockBraceParent {
    public AngelScriptBlockFun(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings) {
        super(myNode, myAlignment, myIndent, settings);
        braceStyle = settings.common.METHOD_BRACE_STYLE;
    }
}
