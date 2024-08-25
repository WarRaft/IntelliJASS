package raft.war.language.jass.formatting.aligner

import com.intellij.formatting.Alignment
import raft.war.language.jass.formatting.JassCodeStyleSettings

class JassTypeAligner(val jass: JassCodeStyleSettings) {
    private val map = HashMap<String, Alignment>()

    fun alignment(name :String): Alignment? = map[name]

    init {
        if (jass.AT_TYPE_DECL_TYPE_RIGHT) map[JassCodeStyleSettings::AT_TYPE_DECL_TYPE_RIGHT.name] =
            Alignment.createAlignment(true, Alignment.Anchor.RIGHT)
        if (jass.AT_TYPE_DECL_EXTENDS) map[JassCodeStyleSettings::AT_TYPE_DECL_EXTENDS.name] =
            Alignment.createAlignment(true)
        if (jass.AT_TYPE_DECL_TYPE_BASE_RIGHT) map[JassCodeStyleSettings::AT_TYPE_DECL_TYPE_BASE_RIGHT.name] =
            Alignment.createAlignment(true, Alignment.Anchor.RIGHT)
    }
}
