package guru.xgm.language.angelscript.codeInsight.completion

import com.intellij.codeInsight.completion.*
import com.intellij.codeInsight.lookup.LookupElementBuilder
import guru.xgm.language.angelscript.codeInsight.completion.FilePathMatcher.aggregateFilePaths
import guru.xgm.language.angelscript.psi.AngelScriptTypes

class AngelScriptCompletionContributor : CompletionContributor() {
    private fun fillCompletionVariantsInclude(parameters: CompletionParameters, result: CompletionResultSet) {
    }

    override fun handleAutoCompletionPossibility(context: AutoCompletionContext): AutoCompletionDecision? {
        return super.handleAutoCompletionPossibility(context)
    }

    override fun fillCompletionVariants(parameters: CompletionParameters, result: CompletionResultSet) {
        // include #

        val opos = parameters.originalPosition
        if (opos != null) {
            val prev = opos.prevSibling

            //System.out.print(prev);
            //System.out.print("\ntype|" + (opos.getParent().getNode().getClass()) + "\n");
            if (prev != null) {
                //System.out.print(isUnderPsiRoot(opos.getContainingFile(), prev));
            }
        }

        // include
        var child = parameters.position.node
        do {
            val parent = child.treeParent ?: break
            val type = parent.elementType
            if (type === AngelScriptTypes.INCLUDE_STMT) {
                fillCompletionVariantsInclude(parameters, result)
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

    companion object {
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
    }
}
