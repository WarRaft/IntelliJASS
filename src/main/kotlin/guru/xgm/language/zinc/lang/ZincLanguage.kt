package guru.xgm.language.zinc.lang

import com.intellij.lang.Language

class ZincLanguage : Language(NAME) {
    companion object {
        const val NAME = "ZINC"
        val instance = ZincLanguage()
    }

}
