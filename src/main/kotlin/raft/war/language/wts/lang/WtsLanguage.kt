package raft.war.language.wts.lang

import com.intellij.lang.Language

class WtsLanguage : Language(NAME) {

    companion object {
        val instance: WtsLanguage = WtsLanguage()
        const val NAME = "WTS"
    }
}
