package guru.xgm.language.angelscript.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockBraceParent;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.ENUM_STAT_BLOCK;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.NSPACE_STAT_BLOCK;

public class AngelScriptBlockNamespace extends AngelScriptBlockBraceParent {
    public AngelScriptBlockNamespace(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings) {
        super(myNode, myAlignment, myIndent, settings);
        braceStyle = settings.common.CLASS_BRACE_STYLE;
    }
}
