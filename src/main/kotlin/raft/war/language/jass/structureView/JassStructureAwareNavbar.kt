package raft.war.language.jass.structureView

import com.intellij.icons.AllIcons
import com.intellij.ide.navigationToolbar.StructureAwareNavBarModelExtension
import com.intellij.lang.Language
import raft.war.language.jass.JassLanguage.Companion.instance
import raft.war.language.jass.psi.JassFun
import javax.swing.Icon

internal class JassStructureAwareNavbar : StructureAwareNavBarModelExtension() {
    override val language: Language
        get() = instance

    override fun getPresentableText(obj: Any): String? {
        if (obj is JassFun) {
            return obj.funHead?.funName?.text
        }
        return null
    }

    override fun getIcon(obj: Any): Icon? {
        if (obj is JassFun) {
            return AllIcons.Nodes.Function
        }

        return null
    }
}
