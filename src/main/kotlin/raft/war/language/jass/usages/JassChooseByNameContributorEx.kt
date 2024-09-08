package raft.war.language.jass.usages

import com.intellij.navigation.ChooseByNameContributorEx
import com.intellij.navigation.NavigationItem
import com.intellij.openapi.progress.ProgressManager
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.StubIndex
import com.intellij.psi.stubs.StubIndexKey
import com.intellij.util.Processor
import com.intellij.util.indexing.FindSymbolParameters
import com.intellij.util.indexing.IdFilter
import raft.war.language.jass.psi.JassNamedElement
import raft.war.language.jass.psi.funName.FUN_NAME_KEY
import raft.war.language.jass.psi.varName.VAR_NAME_KEY

class JassChooseByNameContributorEx : ChooseByNameContributorEx {
    private val myIndexKeys: List<StubIndexKey<String, JassNamedElement>> = listOf(FUN_NAME_KEY, VAR_NAME_KEY)

    override fun processNames(
        processor: Processor<in String>,
        scope: GlobalSearchScope,
        filter: IdFilter?
    ) {
        for (key in myIndexKeys) {
            ProgressManager.checkCanceled()
            StubIndex.getInstance().processAllKeys(
                key,
                processor,
                scope,
                filter
            )
        }
    }

    override fun processElementsWithName(
        name: String,
        processor: Processor<in NavigationItem>,
        parameters: FindSymbolParameters
    ) {
        for (key in myIndexKeys) {
            ProgressManager.checkCanceled()
            StubIndex.getInstance().processElements(
                key,
                name,
                parameters.project,
                parameters.searchScope,
                parameters.idFilter,
                JassNamedElement::class.java,
                processor
            )
        }
    }
}
