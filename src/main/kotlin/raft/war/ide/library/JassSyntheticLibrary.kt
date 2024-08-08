package raft.war.ide.library

import com.intellij.navigation.ItemPresentation
import com.intellij.openapi.project.Project
import com.intellij.openapi.roots.AdditionalLibraryRootsProvider
import com.intellij.openapi.roots.SyntheticLibrary
import com.intellij.openapi.vfs.VirtualFile
import raft.war.language.jass.JassIcons
import raft.war.language.jass.JassLanguage
import javax.swing.Icon

class JassSyntheticLibrary(val files: MutableList<VirtualFile>) : SyntheticLibrary(),
    ItemPresentation {
    override fun getPresentableText(): String = JassLanguage.NAME

    override fun getIcon(unused: Boolean): Icon = JassIcons.FILE

    override fun getSourceRoots(): Collection<VirtualFile> = files

    override fun isShowInExternalLibrariesNode(): Boolean = true

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false
        other as JassSyntheticLibrary
        return files == other.files
    }

    override fun hashCode(): Int = files.hashCode()

    companion object {
        fun fromProject(project: Project): JassSyntheticLibrary? {
            AdditionalLibraryRootsProvider.EP_NAME.extensions.forEach {
                it.getAdditionalProjectLibraries(project).forEach { lib ->
                    if (lib is JassSyntheticLibrary) return lib
                }
            }
            return null
        }
    }
}
