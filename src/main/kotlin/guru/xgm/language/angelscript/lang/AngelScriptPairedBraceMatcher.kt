package guru.xgm.language.angelscript.lang

import com.intellij.lang.BracePair
import com.intellij.lang.PairedBraceMatcher
import com.intellij.psi.PsiFile
import com.intellij.psi.tree.IElementType
import guru.xgm.language.angelscript.psi.AngelScriptTypes.*

// https://intellij-support.jetbrains.com/hc/en-us/community/posts/115000393430-Auto-closing-braces-in-a-custom-language-BraceMatcher-not-working
class AngelScriptPairedBraceMatcher : PairedBraceMatcher {
    override fun getPairs(): Array<BracePair> = arrayOf(
        BracePair(LBRACE, RBRACE, false),
        BracePair(LPAREN, RPAREN, false),
        BracePair(LBRACK, RBRACK, false),
    )

    override fun isPairedBracesAllowedBeforeType(lbraceType: IElementType, contextType: IElementType?): Boolean = false
    override fun getCodeConstructStart(file: PsiFile, openingBraceOffset: Int): Int = 0
}
