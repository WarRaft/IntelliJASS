package guru.xgm.language.angelscript.psi

import com.intellij.psi.tree.TokenSet
import guru.xgm.language.angelscript.psi.AngelScriptTypes.*

interface AngelScriptTokenSets {
    companion object {
        val COMMENTS: TokenSet = TokenSet.create(LINE_COMMENT, BLOCK_COMMENT)
    }
}
