package raft.war.language.jass.formatting.block

import com.intellij.formatting.Alignment
import raft.war.language.jass.formatting.JassCodeStyleSettings

class JassNativeBlockAligner internal constructor(private val jass: JassCodeStyleSettings) {
    private val map = HashMap<String, Alignment>()
    private val list = ArrayList<Alignment>()

    init {
        if (jass.AT_NATIVE_DECL_NATIVE) map[JassCodeStyleSettings::AT_NATIVE_DECL_NATIVE.name] =
            Alignment.createAlignment(true)
        if (jass.AT_NATIVE_DECL_NAME || jass.AT_NATIVE_DECL_NAME_RIGHT) map[JassCodeStyleSettings::AT_NATIVE_DECL_NAME.name] =
            Alignment.createAlignment(
                true,
                if (jass.AT_NATIVE_DECL_NAME_RIGHT) Alignment.Anchor.RIGHT else Alignment.Anchor.LEFT
            )
        if (jass.AT_NATIVE_DECL_TAKES) map[JassCodeStyleSettings::AT_NATIVE_DECL_TAKES.name] =
            Alignment.createAlignment(true)
        if (jass.AT_NATIVE_DECL_RETURNS) map[JassCodeStyleSettings::AT_NATIVE_DECL_RETURNS.name] =
            Alignment.createAlignment(true)
    }

    fun named(name: String): Alignment? {
        return map[name]
    }

    fun argument(index: Int): Alignment? {
        if (!jass.AT_NATIVE_DECL_ARGUMENT) return null
        while (list.size <= index) {
            list.add(Alignment.createAlignment(true))
        }
        return list[index]
    }
}
