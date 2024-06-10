package raft.war.language.lni.lang.folding

import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.components.PersistentStateComponent
import com.intellij.openapi.components.SettingsCategory
import com.intellij.openapi.components.State
import com.intellij.openapi.components.Storage
import com.intellij.util.xmlb.XmlSerializerUtil

@State(name = "LniCodeFoldingSettings", storages = [Storage("editor.xml")], category = SettingsCategory.CODE)
class LniCodeFoldingSettings : PersistentStateComponent<LniCodeFoldingSettings> {
    var isFoldItem: Boolean = false
    var isFoldList: Boolean = false

    override fun getState(): LniCodeFoldingSettings {
        return this
    }

    override fun loadState(state: LniCodeFoldingSettings) {
        XmlSerializerUtil.copyBean(state, this)
    }

    companion object {
        val instance: LniCodeFoldingSettings
            get() = ApplicationManager.getApplication().getService(LniCodeFoldingSettings::class.java)
    }
}
