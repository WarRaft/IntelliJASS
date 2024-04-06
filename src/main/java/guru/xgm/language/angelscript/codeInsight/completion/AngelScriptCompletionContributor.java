package guru.xgm.language.angelscript.codeInsight.completion;

import com.intellij.codeInsight.completion.CompletionContributor;
import com.intellij.codeInsight.completion.CompletionParameters;
import com.intellij.codeInsight.completion.CompletionResultSet;
import com.intellij.codeInsight.lookup.LookupElementBuilder;
import com.intellij.lang.ASTNode;
import com.intellij.openapi.vfs.VirtualFile;

import org.jetbrains.annotations.NotNull;

public class AngelScriptCompletionContributor extends CompletionContributor {

    private void fillCompletionVariantsImport(@NotNull CompletionParameters parameters, @NotNull CompletionResultSet result) {

    }

    @Override
    public void fillCompletionVariants(@NotNull CompletionParameters parameters, @NotNull CompletionResultSet result) {
        //System.out.print(parameters.getPosition().getNode() + "\n");
        // import
        ASTNode child = parameters.getPosition().getNode();
        do {
            final ASTNode parent = child.getTreeParent();
            if (parent == null) break;
            child = parent;
        }
        while (true);

        //

        VirtualFile parentDirectoryOfCurrentFile = parameters.getOriginalFile()
                .getVirtualFile()
                .getParent();

        String queryString = getQueryString(parameters);
        String parentDirectoryOfCurrentFileStr = parentDirectoryOfCurrentFile == null ? "" :
                parentDirectoryOfCurrentFile.getCanonicalPath();


        FilePathMatcher.aggregateFilePaths(parentDirectoryOfCurrentFileStr, queryString)
                .forEach(path -> result.withPrefixMatcher(queryString)
                        .addElement(LookupElementBuilder.create(path)));
    }

    private static String getQueryString(CompletionParameters parameters) {
        int caretPositionInString = parameters.getOffset() - parameters.getPosition().getTextOffset();
        String queryString = parameters.getPosition()
                .getText()
                .substring(0, caretPositionInString);

        if (queryString.startsWith("'") || queryString.startsWith("\"")) {
            queryString = queryString.substring(1);
        }

        return queryString;
    }
}
