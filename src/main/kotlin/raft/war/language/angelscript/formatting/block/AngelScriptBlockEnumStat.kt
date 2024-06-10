package raft.war.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.formatting.SpacingBuilder
import com.intellij.lang.ASTNode
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockSettings
import raft.war.language.angelscript.psi.AngelScriptTypes

class AngelScriptBlockEnumStat(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings,
    braceStyle: Int
) : AngelScriptBlockStat(myNode, myAlignment, myIndent, settings, braceStyle) {

    var eqAlignment: Alignment? = null

    init {
        if (settings.custom.AT_ENUM_EQ) eqAlignment = Alignment.createAlignment(true, Alignment.Anchor.LEFT)
    }

    override fun makeSubBlock(childNode: ASTNode, indent: Indent): Block {
        if (FormatterUtil.isOneOf(childNode, raft.war.language.angelscript.psi.AngelScriptTypes.ENUM_ITEM)) return AngelScriptBlockEnumItem(
            childNode,
            null,
            Indent.getNormalIndent(),
            settings,
            this
        )
        return super.makeSubBlock(childNode, indent)
    }

    override val spacingBuilder: SpacingBuilder
        get() {
            var sb = super.spacingBuilder

            val sbc = if (settings.common.SPACE_BEFORE_COMMA) 1 else 0
            sb = sb.before(raft.war.language.angelscript.psi.AngelScriptTypes.COMMA).spacing(sbc, sbc, 0, false, 0)

            //final int sac = settings.common.SPACE_AFTER_COMMA ? 1 : 0;
            sb = sb.after(raft.war.language.angelscript.psi.AngelScriptTypes.COMMA).spacing(1, 1, 1, false, 0)

            return sb
        }
}
