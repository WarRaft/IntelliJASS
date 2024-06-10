package raft.war.language.zinc.formatting.block

import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.formatting.SpacingBuilder
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import raft.war.language.zinc.formatting.ZincCodeStyleSettings
import raft.war.language.zinc.lang.ZincLanguage

class ZincRootBlock(myNode: ASTNode, code: CodeStyleSettings, zinc: ZincCodeStyleSettings?) : ZincBlock(
    myNode, null, Indent.getNoneIndent(), code
) {
    //private final HashMap<String, Alignment> typeAlignments;
    //private final JassNativeBlockAligner nativeAligner;
    override fun makeSubBlock(childNode: ASTNode): Block {
        //if (isOneOf(childNode, TYPE_DEF)) return new JassTypeBlock(childNode, myCodeStyleSettings, typeAlignments);
        //if (isOneOf(childNode, NATIVE_DEF)) return new JassNativeBlock(childNode, Indent.getNoneIndent(), myCodeStyleSettings, nativeAligner);
        //if (isOneOf(childNode, GLOBALS_DEF)) return new JassGlobalsBlock(childNode, myCodeStyleSettings);
        //if (isOneOf(childNode, FUNC_DEF)) return new JassFunctionBlock(childNode, null, Indent.getNoneIndent(), myCodeStyleSettings);

        return ZincBlock(childNode, myAlignment, myIndent, myCodeStyleSettings)
    }

    override val spacingBuilder: SpacingBuilder
        get() = SpacingBuilder(myCodeStyleSettings, ZincLanguage.instance)
    //.between(TYPE_DEF, TYPE_DEF).spacing(0, 0, 1, true, 2)
    //.between(TYPE_DEF, LINE_COMMENT).spacing(1, 1, 0, true, 100)
    //.between(NATIVE_DEF, NATIVE_DEF).spacing(0, 0, 1, true, 2)
    //.between(NATIVE_DEF, LINE_COMMENT).spacing(1, 1, 0, true, 100)
}
