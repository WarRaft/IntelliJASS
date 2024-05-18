package guru.xgm.intellij.openapi.startup

import com.intellij.openapi.project.Project
import com.intellij.openapi.startup.ProjectActivity

class IntellijProjectActivity : ProjectActivity {
    override suspend fun execute(project: Project) {
        //print("catcha!\n")
    }
}
