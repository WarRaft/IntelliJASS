package raft.war.language.jass.intention.number.converter

import com.intellij.psi.tree.IElementType
import raft.war.language.jass.intention.number.JassIntentionNumberConverter
import raft.war.language.jass.psi.JassTypes.HEXVAL
import raft.war.language.jass.psi.JassTypes.RAWVAL

class JassIntentionRawCodeToHex : JassIntentionNumberConverter() {
    override fun getFamilyName(): String = "Convert rawcode to hex"

    override fun getText(): String = "Convert to hex"

    override fun from(): IElementType = RAWVAL

    override fun to(): IElementType = HEXVAL
}
