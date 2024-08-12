package raft.war.language.jass.intention.number.converter

import com.intellij.psi.tree.IElementType
import raft.war.language.jass.intention.number.JassIntentionNumberConverter
import raft.war.language.jass.psi.JassTypes.INTVAL
import raft.war.language.jass.psi.JassTypes.RAWVAL

class JassIntentionRawCodeToInt : JassIntentionNumberConverter() {

    override fun getFamilyName(): String = "Convert rawcode to integer"

    override fun getText(): String = "Convert to integer"

    override fun from(): IElementType = RAWVAL

    override fun to(): IElementType = INTVAL
}
