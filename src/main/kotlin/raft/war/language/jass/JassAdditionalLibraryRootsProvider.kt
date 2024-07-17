package raft.war.language.jass

import com.intellij.navigation.ItemPresentation
import com.intellij.openapi.project.Project
import com.intellij.openapi.roots.AdditionalLibraryRootsProvider
import com.intellij.openapi.roots.SyntheticLibrary
import com.intellij.openapi.vfs.VfsUtil
import com.intellij.openapi.vfs.VirtualFile
import com.intellij.psi.PsiManager
import com.intellij.util.PathUtil
import com.intellij.util.io.URLUtil
import raft.war.ide.openapi.startup.PluginProjectActivity
import java.io.File
import javax.swing.Icon

class JassAdditionalLibraryRootsProvider : AdditionalLibraryRootsProvider() {

    override fun getAdditionalProjectLibraries(project: Project): Collection<SyntheticLibrary> {
        val jarPath = PathUtil.getJarPathForClass(PluginProjectActivity::class.java)
        val dir = if (jarPath.endsWith(".jar")) {
            VfsUtil.findFileByURL(URLUtil.getJarEntryURL(File(jarPath), "sdk"))
        } else {
            VfsUtil.findFileByIoFile(File("$jarPath/sdk"), true)
        }

        val psiManager = PsiManager.getInstance(project)

        val files: MutableList<VirtualFile> = mutableListOf()

        dir?.children?.forEach {
            val psiFile = psiManager.findFile(it)
            if (psiFile != null) {
                if (psiFile.language !is JassLanguage) return@forEach
                if (it == null) return@forEach
                files.add(it)
            }
        }

        return if (files.isNotEmpty()) {
            listOf(JassSourcesSyntheticLibrary(files))
        } else {
            emptyList()
        }
    }

    class JassSourcesSyntheticLibrary(val files: MutableList<VirtualFile>) : SyntheticLibrary(),
        ItemPresentation {

        override fun getPresentableText(): String = JassLanguage.NAME

        override fun getIcon(unused: Boolean): Icon = JassIcons.FILE

        override fun getSourceRoots(): Collection<VirtualFile> = files

        override fun isShowInExternalLibrariesNode(): Boolean = true

        override fun equals(other: Any?): Boolean {
            if (this === other) return true
            if (javaClass != other?.javaClass) return false
            other as JassSourcesSyntheticLibrary
            return files == other.files
        }

        override fun hashCode(): Int = files.hashCode()
    }
}
