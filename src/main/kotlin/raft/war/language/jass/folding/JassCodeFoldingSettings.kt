package raft.war.language.jass.folding

import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.components.PersistentStateComponent
import com.intellij.openapi.components.SettingsCategory
import com.intellij.openapi.components.State
import com.intellij.openapi.components.Storage
import com.intellij.util.xmlb.XmlSerializerUtil

@State(name = "JassCodeFoldingSettings", storages = [Storage("editor.xml")], category = SettingsCategory.CODE)
class JassCodeFoldingSettings : PersistentStateComponent<JassCodeFoldingSettings> {
    var isFoldGlobals: Boolean = false
    var isFoldFunction: Boolean = false
    var isFoldIf: Boolean = false
    var isFoldLoop: Boolean = false

    override fun getState(): JassCodeFoldingSettings = this

    override fun loadState(state: JassCodeFoldingSettings) = XmlSerializerUtil.copyBean(state, this)

    companion object {
        val instance: JassCodeFoldingSettings
            get() = ApplicationManager.getApplication().getService(
                JassCodeFoldingSettings::class.java
            )
    }
}
