package raft.war.language.jass.intention.number.converter

import com.intellij.psi.tree.IElementType
import raft.war.language.jass.intention.number.JassIntentionNumberConverter
import raft.war.language.jass.psi.JassTypes.*

class JassIntentionHexToRawCode : JassIntentionNumberConverter() {

    override fun getFamilyName(): String = "Convert hex to rawcode"

    override fun getText(): String = "Convert to rawcode"

    override fun from(): IElementType = HEXVAL

    override fun to(): IElementType = RAWVAL
}
