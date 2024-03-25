package guru.xgm.language.angelscript.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.formatting.SpacingBuilder;
import com.intellij.lang.ASTNode;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.CASE_STMT_LIST;

public class AngelScriptBlockCase extends AngelScriptBlock {
    public AngelScriptBlockCase(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings) {
        super(myNode, myAlignment, myIndent, settings);
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode, Indent indent) {
        if (isOneOf(childNode, CASE_STMT_LIST))
            return new AngelScriptBlockCaseStmtList(childNode, null, Indent.getNormalIndent(), settings);

        return super.makeSubBlock(childNode, indent);
    }

    @Override
    protected SpacingBuilder getSpacingBuilder() {
        return super.getSpacingBuilder().before(CASE_STMT_LIST).spacing(1, 1, 1, true, 1);
    }
}
