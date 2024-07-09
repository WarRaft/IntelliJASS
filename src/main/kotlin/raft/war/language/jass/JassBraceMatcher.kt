package raft.war.language.jass

import com.intellij.lang.BracePair
import com.intellij.lang.PairedBraceMatcher
import com.intellij.psi.PsiFile
import com.intellij.psi.tree.IElementType
import raft.war.language.jass.psi.JassTypes.*

class JassBraceMatcher : PairedBraceMatcher {

    private val bracePairs = arrayOf(
        BracePair(LPAREN, RPAREN, false),
        BracePair(LBRACK, RBRACK, false)
    )

    override fun getPairs(): Array<BracePair> {
       return bracePairs
    }

    override fun isPairedBracesAllowedBeforeType(lbraceType: IElementType, contextType: IElementType?): Boolean {
       //return !MonkeyParserDefinition.STRINGS.contains(contextType) &&contextType != LPAREN &&contextType != LBRACE &&contextType != LBRACKET
        return true
    }

    override fun getCodeConstructStart(file: PsiFile?, openingBraceOffset: Int): Int {
        return openingBraceOffset
    }
}
