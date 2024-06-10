package raft.war.language.lni.lang

import com.intellij.lang.Language

class LniLanguage : Language(NAME) {
    companion object {
        const val NAME = "LNI"
        val instance = LniLanguage()
    }
}
