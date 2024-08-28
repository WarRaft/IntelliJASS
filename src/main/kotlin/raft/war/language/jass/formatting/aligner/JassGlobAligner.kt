package raft.war.language.jass.formatting.aligner

import com.intellij.formatting.Alignment
import raft.war.language.jass.formatting.JassCodeStyleSettings

class JassGlobAligner(val jass: JassCodeStyleSettings) {
    private val map = HashMap<String, Alignment>()

    fun alignment(name: String): Alignment? = map[name]

    init {
        if (jass.AT_GVAR_TYPE || jass.AT_GVAR_TYPE_RIGHT) map[JassCodeStyleSettings::AT_GVAR_TYPE.name] =
            Alignment.createAlignment(
                true,
                if (jass.AT_GVAR_TYPE_RIGHT) Alignment.Anchor.RIGHT else Alignment.Anchor.LEFT
            )
        if (jass.AT_GVAR_ARRAY) map[JassCodeStyleSettings::AT_GVAR_ARRAY.name] = Alignment.createAlignment(true)
        if (jass.AT_GVAR_NAME || jass.AT_GVAR_NAME_RIGHT) map[JassCodeStyleSettings::AT_GVAR_NAME.name] =
            Alignment.createAlignment(
                true,
                if (jass.AT_GVAR_NAME_RIGHT) Alignment.Anchor.RIGHT else Alignment.Anchor.LEFT
            )
        if (jass.AT_GVAR_ASSIGN) map[JassCodeStyleSettings::AT_GVAR_ASSIGN.name] = Alignment.createAlignment(true)
    }
}
