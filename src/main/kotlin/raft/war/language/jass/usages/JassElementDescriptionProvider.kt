package raft.war.language.jass.usages

import com.intellij.codeInsight.highlighting.HighlightUsagesDescriptionLocation
import com.intellij.psi.ElementDescriptionLocation
import com.intellij.psi.ElementDescriptionProvider
import com.intellij.psi.PsiElement
import com.intellij.usageView.UsageViewLongNameLocation
import com.intellij.usageView.UsageViewShortNameLocation
import raft.war.language.jass.psi.JassNamedElement

class JassElementDescriptionProvider : ElementDescriptionProvider {
    override fun getElementDescription(o: PsiElement, location: ElementDescriptionLocation): String? {
        return if (location === UsageViewShortNameLocation.INSTANCE || location === UsageViewLongNameLocation.INSTANCE || location === HighlightUsagesDescriptionLocation.INSTANCE
        ) {
            if (o is JassNamedElement) o.name else null
        } else null
    }
}
