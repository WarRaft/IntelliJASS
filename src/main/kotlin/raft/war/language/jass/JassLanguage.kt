package raft.war.language.jass

import com.intellij.lang.Language

class JassLanguage : Language(NAME) {
    companion object {
        const val NAME = "JASS"
        val instance = JassLanguage()
    }
}
