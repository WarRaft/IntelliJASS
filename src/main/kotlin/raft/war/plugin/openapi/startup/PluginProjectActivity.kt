package raft.war.plugin.openapi.startup

import com.intellij.openapi.project.Project
import com.intellij.openapi.startup.ProjectActivity
import com.intellij.openapi.vfs.VirtualFileManager
import java.nio.file.Paths

class PluginProjectActivity : ProjectActivity {
    override suspend fun execute(project: Project) {
        print("catcha!\n")
        val resourceUrl = this::class.java.classLoader.getResource("/resources/sdk/common.j")
        print(resourceUrl)
        resourceUrl?.let {
            val filePath = Paths.get(it.toURI()).toString()
            print(filePath)

            val v = VirtualFileManager.getInstance().findFileByUrl("file://$filePath")
            print(v)
        }
    }
}
