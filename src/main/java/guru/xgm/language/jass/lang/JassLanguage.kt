package guru.xgm.language.jass.lang

import com.intellij.lang.Language

class JassLanguage : Language(NAME) {
    companion object {
        const val NAME = "JASS"
        val instance = JassLanguage()
    }
}
