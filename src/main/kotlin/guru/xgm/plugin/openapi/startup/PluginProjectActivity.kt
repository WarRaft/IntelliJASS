package guru.xgm.plugin.openapi.startup

import com.intellij.openapi.project.Project
import com.intellij.openapi.startup.ProjectActivity

class PluginProjectActivity : ProjectActivity {
    override suspend fun execute(project: Project) {
        //print("catcha!\n")
    }
}
