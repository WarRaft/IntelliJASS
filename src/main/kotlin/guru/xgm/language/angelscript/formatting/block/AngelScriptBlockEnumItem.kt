package guru.xgm.language.angelscript.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.EQ;

public class AngelScriptBlockEnumItem extends AngelScriptBlock {
    public AngelScriptBlockEnumItem(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings, AngelScriptBlockEnumStat parent) {
        super(myNode, myAlignment, myIndent, settings);
        this.parent = parent;
    }

    private final AngelScriptBlockEnumStat parent;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode, Indent indent) {
        if (isOneOf(childNode, EQ)) return new AngelScriptBlock(childNode, parent.eqAlignment, null, settings);

        return super.makeSubBlock(childNode, indent);
    }
}
