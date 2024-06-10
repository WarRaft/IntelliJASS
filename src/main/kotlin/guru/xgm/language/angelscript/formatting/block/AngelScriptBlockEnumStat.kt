package guru.xgm.language.angelscript.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.formatting.SpacingBuilder;
import com.intellij.lang.ASTNode;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.COMMA;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.ENUM_ITEM;

public class AngelScriptBlockEnumStat extends AngelScriptBlockStat {
    public AngelScriptBlockEnumStat(ASTNode myNode, Alignment myAlignment, Indent myIndent, AngelScriptBlockSettings settings, int braceStyle) {
        super(myNode, myAlignment, myIndent, settings, braceStyle);
        if (settings.custom.AT_ENUM_EQ) eqAlignment = Alignment.createAlignment(true, Alignment.Anchor.LEFT);
    }

    @Nullable
    public Alignment eqAlignment;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode, Indent indent) {
        if (isOneOf(childNode, ENUM_ITEM))
            return new AngelScriptBlockEnumItem(childNode, null, Indent.getNormalIndent(), settings, this);
        return super.makeSubBlock(childNode, indent);
    }

    @Override
    protected SpacingBuilder getSpacingBuilder() {
        var sb = super.getSpacingBuilder();

        final int sbc = settings.common.SPACE_BEFORE_COMMA ? 1 : 0;
        sb = sb.before(COMMA).spacing(sbc, sbc, 0, false, 0);

        //final int sac = settings.common.SPACE_AFTER_COMMA ? 1 : 0;
        sb = sb.after(COMMA).spacing(1, 1, 1, false, 0);

        return sb;
    }
}
