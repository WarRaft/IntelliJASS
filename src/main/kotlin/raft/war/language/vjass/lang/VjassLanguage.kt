package raft.war.language.vjass.lang

import com.intellij.lang.Language

class VjassLanguage : Language(NAME) {
    companion object {
        val instance: VjassLanguage = VjassLanguage()
        const val NAME = "VJASS"
    }
}
