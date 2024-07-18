package raft.war.ide

import com.intellij.openapi.project.Project
import com.intellij.openapi.startup.ProjectActivity


class IdeProjectActivity : ProjectActivity {
    override suspend fun execute(project: Project) {
    }
}
