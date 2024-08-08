package raft.war.ide.library

import com.intellij.openapi.project.Project
import com.intellij.openapi.roots.AdditionalLibraryRootsProvider
import com.intellij.openapi.roots.SyntheticLibrary
import com.intellij.openapi.vfs.VfsUtil
import com.intellij.openapi.vfs.VirtualFile
import com.intellij.psi.PsiManager
import com.intellij.util.PathUtil
import com.intellij.util.io.URLUtil
import raft.war.ide.IdeProjectActivity
import raft.war.language.jass.JassLanguage
import java.io.File

class IdeAdditionalLibraryRootsProvider : AdditionalLibraryRootsProvider() {

    override fun getAdditionalProjectLibraries(project: Project): Collection<SyntheticLibrary> {
        val jarPath = PathUtil.getJarPathForClass(IdeProjectActivity::class.java)
        val path = "sdk"

        val dir = if (jarPath.endsWith(".jar")) {
            VfsUtil.findFileByURL(URLUtil.getJarEntryURL(File(jarPath), path))
        } else {
            VfsUtil.findFileByIoFile(File("$jarPath/$path"), true)
        }

        val psiManager = PsiManager.getInstance(project)

        val files: MutableList<VirtualFile> = mutableListOf()

        dir?.children?.forEach {
            if (it == null) return@forEach
            val psiFile = psiManager.findFile(it)
            if (psiFile == null || psiFile.language !is JassLanguage) return@forEach
            files.add(it)
        }

        return if (files.isNotEmpty()) listOf(JassSyntheticLibrary(files)) else emptyList()
    }
}
