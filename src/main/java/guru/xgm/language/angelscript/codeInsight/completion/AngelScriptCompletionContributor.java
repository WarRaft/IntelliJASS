package guru.xgm.language.angelscript.codeInsight.completion;

import com.intellij.codeInsight.completion.*;
import com.intellij.codeInsight.lookup.LookupElementBuilder;
import com.intellij.lang.ASTNode;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.util.PsiUtilBase;
import guru.xgm.language.angelscript.extapi.psi.AngelScriptPsiFileBase;
import guru.xgm.language.angelscript.openapi.fileTypes.AngelScriptFileType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import static com.intellij.psi.util.PsiUtilBase.isUnderPsiRoot;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;

public class AngelScriptCompletionContributor extends CompletionContributor {

    private void fillCompletionVariantsInclude(@NotNull CompletionParameters parameters, @NotNull CompletionResultSet result) {

    }

    @Override
    public @Nullable AutoCompletionDecision handleAutoCompletionPossibility(@NotNull AutoCompletionContext context) {
        return super.handleAutoCompletionPossibility(context);
    }

    @Override
    public void fillCompletionVariants(@NotNull CompletionParameters parameters, @NotNull CompletionResultSet result) {

        // include #
        final var opos = parameters.getOriginalPosition();
        if (opos != null) {
            final var prev = opos.getPrevSibling();

            //System.out.print(prev);
            //System.out.print("\ntype|" + (opos.getParent().getNode().getClass()) + "\n");
            if (prev != null) {
                //System.out.print(isUnderPsiRoot(opos.getContainingFile(), prev));

            }

        }

        // include
        ASTNode child = parameters.getPosition().getNode();
        do {
            final ASTNode parent = child.getTreeParent();
            if (parent == null) break;
            final var type = parent.getElementType();
            if (type == INCLUDE_STMT) {
                fillCompletionVariantsInclude(parameters, result);
            }
            child = parent;
        }
        while (true);

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
