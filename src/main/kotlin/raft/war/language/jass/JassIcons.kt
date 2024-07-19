package raft.war.language.jass

import com.intellij.icons.AllIcons
import com.intellij.openapi.util.IconLoader.getIcon
import javax.swing.Icon

// https://intellij-icons.jetbrains.design/

// https://www.svgrepo.com/collection/halloween-20/
object JassIcons {
    val FILE: Icon = getIcon("/icons/jass.svg", JassIcons::class.java)

    val function: Icon = AllIcons.Nodes.Function
    val native: Icon = AllIcons.Nodes.Interface
}
