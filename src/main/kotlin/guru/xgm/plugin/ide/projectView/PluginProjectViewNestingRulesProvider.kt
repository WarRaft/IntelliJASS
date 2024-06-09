package guru.xgm.plugin.ide.projectView

import com.intellij.ide.projectView.ProjectViewNestingRulesProvider
import guru.xgm.language.angelscript.openapi.fileTypes.AngelScriptFileType
import guru.xgm.language.jass.openapi.fileTypes.JassFileType

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
