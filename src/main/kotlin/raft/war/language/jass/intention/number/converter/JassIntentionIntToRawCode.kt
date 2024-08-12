package raft.war.language.jass.intention.number.converter

import com.intellij.psi.tree.IElementType
import raft.war.language.jass.intention.number.JassIntentionNumberConverter
import raft.war.language.jass.psi.JassTypes.INTVAL
import raft.war.language.jass.psi.JassTypes.RAWVAL

class JassIntentionIntToRawCode : JassIntentionNumberConverter() {

    override fun getFamilyName(): String = "Convert integer to rawcode"

    override fun getText(): String = "Convert to rawcode"

    override fun from(): IElementType = INTVAL

    override fun to(): IElementType = RAWVAL
}
