package raft.war.language.jass.psi.compositeElement

import com.intellij.extapi.psi.ASTWrapperPsiElement
import com.intellij.lang.ASTNode
import com.intellij.navigation.ItemPresentation
import com.intellij.usageView.UsageViewUtil
import javax.swing.Icon

class JassCompositeElementImpl(node: ASTNode) : ASTWrapperPsiElement(node), JassCompositeElement {
    override fun toString(): String {
        return node.elementType.toString()
    }

    override fun getPresentation(): ItemPresentation {
        val text = UsageViewUtil.createNodeText(this)
        return object : ItemPresentation {
            override fun getPresentableText(): String {
                return text
            }

            override fun getLocationString(): String {
                return containingFile.name
            }

            override fun getIcon(b: Boolean): Icon? {
                return null
            }
        }
    }
}
