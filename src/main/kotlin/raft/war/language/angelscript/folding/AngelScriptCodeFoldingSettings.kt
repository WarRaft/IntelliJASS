package raft.war.language.angelscript.folding

import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.components.PersistentStateComponent
import com.intellij.openapi.components.SettingsCategory
import com.intellij.openapi.components.State
import com.intellij.openapi.components.Storage
import com.intellij.util.xmlb.XmlSerializerUtil

@State(name = "AngelScriptCodeFoldingSettings", storages = [Storage("editor.xml")], category = SettingsCategory.CODE)
class AngelScriptCodeFoldingSettings : PersistentStateComponent<AngelScriptCodeFoldingSettings> {
    var isFoldEnum: Boolean = false

    override fun getState(): AngelScriptCodeFoldingSettings {
        return this
    }

    override fun loadState(state: AngelScriptCodeFoldingSettings) {
        XmlSerializerUtil.copyBean(state, this)
    }

    companion object {
        @JvmStatic
        val instance: AngelScriptCodeFoldingSettings
            get() = ApplicationManager.getApplication().getService(
                AngelScriptCodeFoldingSettings::class.java
            )
    }
}
