package raft.war.language.jass

import com.intellij.lang.parameterInfo.CreateParameterInfoContext
import com.intellij.lang.parameterInfo.ParameterInfoHandler
import com.intellij.lang.parameterInfo.ParameterInfoUIContext
import com.intellij.lang.parameterInfo.UpdateParameterInfoContext
import com.intellij.psi.util.PsiTreeUtil
import raft.war.language.jass.psi.JassCallStmt

// https://plugins.jetbrains.com/docs/intellij/parameter-info.html

class JassParameterInfoHandler : ParameterInfoHandler<JassCallStmt, String> {

    override fun findElementForParameterInfo(context: CreateParameterInfoContext): JassCallStmt? {
        print("💋 findElementForParameterInfo\n")
        val cur = context.file.findElementAt(context.offset) ?: return null

        val fn = PsiTreeUtil.findFirstParent(cur) { it is JassCallStmt } as JassCallStmt? ?: return null

        context.itemsToShow = arrayOf("anal", "fuck")

        return fn
    }

    override fun showParameterInfo(
        element: JassCallStmt,
        context: CreateParameterInfoContext
    ) {
        print("💋 showParameterInfo\n")
        context.showHint(element, element.textOffset + 1, this)
    }

    override fun findElementForUpdatingParameterInfo(context: UpdateParameterInfoContext): JassCallStmt? {
        print("💋 findElementForUpdatingParameterInfo\n")
        return null
    }

    override fun updateParameterInfo(
        parameterOwner: JassCallStmt,
        context: UpdateParameterInfoContext
    ) {
        print("💋 updateParameterInfo\n")
    }

    override fun updateUI(
        p: String?,
        context: ParameterInfoUIContext
    ) {
        print("💋 updateUI\n")
    }
}
