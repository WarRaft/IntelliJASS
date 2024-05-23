package guru.xgm.language.angelscript.lang

import com.intellij.lang.Language

class AngelScriptLanguage : Language(NAME) {
    companion object {
        const val NAME = "AngelScript"
        val instance = AngelScriptLanguage()
    }
}


