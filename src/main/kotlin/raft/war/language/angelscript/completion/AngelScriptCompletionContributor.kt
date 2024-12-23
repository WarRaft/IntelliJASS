package raft.war.language.angelscript.completion

import com.intellij.codeInsight.completion.*
import com.intellij.codeInsight.lookup.LookupElementBuilder
import com.intellij.icons.AllIcons
import com.intellij.openapi.progress.ProgressManager
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.StubIndex
import raft.war.ide.library.JassSyntheticLibrary
import raft.war.ide.utils.IdeCompletionData
import raft.war.ide.utils.IdeCompletionData.TemplateVariable
import raft.war.language.angelscript.completion.FilePathMatcher.aggregateFilePaths
import raft.war.language.angelscript.psi.file.AngelScriptFile
import raft.war.language.angelscript.psi.AngelScriptTypes.INCLUD
import raft.war.language.jass.psi.*
import raft.war.language.jass.psi.funName.FUN_NAME_KEY

class AngelScriptCompletionContributor : CompletionContributor() {

    override fun fillCompletionVariants(parameters: CompletionParameters, result: CompletionResultSet) {
        val data = IdeCompletionData(parameters, result)

        // -- include
        if (false) {
            var child = parameters.position.node
            do {
                val parent = child.treeParent ?: break
                val type = parent.elementType
                if (type === INCLUD) {
                    //fillCompletionVariantsInclude(parameters, result)
                }
                child = parent
            } while (true)

            val parentDirectoryOfCurrentFile = parameters.originalFile
                .virtualFile
                .parent

            val queryString = getQueryString(parameters)
            val parentDirectoryOfCurrentFileStr =
                if (parentDirectoryOfCurrentFile == null) "" else parentDirectoryOfCurrentFile.canonicalPath!!


            aggregateFilePaths(parentDirectoryOfCurrentFileStr, queryString)
                .forEach { path: String? ->
                    result.withPrefixMatcher(queryString)
                        .addElement(LookupElementBuilder.create(path!!))
                }
        }

        // ---
        functions(data)

    }

    private fun functions(data: IdeCompletionData) {
        if (data.parent is AngelScriptFile) return

        val scope = GlobalSearchScope.allScope(data.project)
        val lib = JassSyntheticLibrary.fromProject(data.project) ?: return

        StubIndex.getInstance().processAllKeys(
            FUN_NAME_KEY,
            { stubKey ->
                StubIndex.getElements(
                    FUN_NAME_KEY,
                    stubKey,
                    data.project,
                    scope,
                    JassNamedElement::class.java,
                ).forEach { func ->
                    ProgressManager.checkCanceled()
                    if (!lib.contains(func.containingFile.virtualFile)) return@forEach

                    val head = func.parent
                    if (head !is JassNativ) return@forEach

                    val take = head.takez
                    val ret = head.returnz
                    val name = head.funName!!.text

                    data.result.addElement(
                        LookupElementBuilder
                            .create(func)
                            .withTypeText("function", AllIcons.Ide.HectorOn, false)
                            .withTypeIconRightAligned(true)
                            .withPsiElement(head)
                            .withTailText(" ${take?.text} ${ret?.text}")
                            .withIcon(AllIcons.Nodes.Function)
                            .withInsertHandler { ctx, _ ->

                                val tslist: MutableList<String> = mutableListOf()
                                val tvlist: MutableList<TemplateVariable> = mutableListOf()

                                // add variables
                                take?.paramList?.forEach {
                                    //val vname = "P${it.varDef.varName.text}"
                                    //tslist.add("\$$vname\$")
                                    //tvlist.add(TemplateVariable(vname, it.varName.text))
                                }

                                data.templateInsert(
                                    ctx,
                                    "$name(${tslist.joinToString(", ")})\$END\$",
                                    *tvlist.toTypedArray()
                                )
                            })
                }
                true
            },
            scope
        )
    }

}

private fun getQueryString(parameters: CompletionParameters): String {
    val caretPositionInString = parameters.offset - parameters.position.textOffset
    var queryString = parameters.position
        .text
        .substring(0, caretPositionInString)

    if (queryString.startsWith("'") || queryString.startsWith("\"")) {
        queryString = queryString.substring(1)
    }

    return queryString
}
