package raft.war.ide.ide.projectView

import com.intellij.ide.projectView.ProjectViewNestingRulesProvider
import raft.war.language.angelscript.openapi.fileTypes.AngelScriptFileType
import raft.war.language.jass.openapi.fileTypes.JassFileType

class PluginProjectViewNestingRulesProvider : ProjectViewNestingRulesProvider {
    override fun addFileNestingRules(consumer: ProjectViewNestingRulesProvider.Consumer) {
        val ass = "." + AngelScriptFileType.EXTENSION
        val j = "." + JassFileType.EXTENSION

        consumer.addNestingRule(j, ass)

        for (e in arrayOf(j, ass)) {
            consumer.addNestingRule(e, ".wts")
        }
    }
}
