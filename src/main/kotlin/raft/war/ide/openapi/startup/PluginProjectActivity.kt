package raft.war.ide.openapi.startup

import com.intellij.openapi.project.Project
import com.intellij.openapi.startup.ProjectActivity

class PluginProjectActivity : ProjectActivity {
    override suspend fun execute(project: Project) {
        /*
        val jarPath = PathUtil.getJarPathForClass(PluginProjectActivity::class.java)
        val dir = if (jarPath.endsWith(".jar")) {
            VfsUtil.findFileByURL(URLUtil.getJarEntryURL(File(jarPath), "sdk"))
        } else
            VfsUtil.findFileByIoFile(File("$jarPath/sdk"), true)

        val application = ApplicationManager.getApplication()
        val psiManager = PsiManager.getInstance(project)

        application.runReadAction {
            //val set = mutableSetOf<VirtualFile>()
            dir?.children?.forEach {
                val psiFile = psiManager.findFile(it)
                if (psiFile != null) {
                    if (psiFile.language !is JassLanguage) return@forEach
                }
            }
        }

         */
    }
}
