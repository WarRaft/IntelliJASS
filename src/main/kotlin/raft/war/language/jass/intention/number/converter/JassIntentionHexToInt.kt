package raft.war.language.jass.intention.number.converter

import com.intellij.psi.tree.IElementType
import raft.war.language.jass.intention.number.JassIntentionNumberConverter
import raft.war.language.jass.psi.JassTypes.HEXVAL
import raft.war.language.jass.psi.JassTypes.INTVAL

class JassIntentionHexToInt : JassIntentionNumberConverter() {

    override fun getFamilyName(): String = "Convert integer to hex"

    override fun getText(): String = "Convert to integer"

    override fun from(): IElementType = HEXVAL

    override fun to(): IElementType = INTVAL
}
