package guru.xgm.jass.lang.folding;

import com.intellij.lang.ASTNode;
import com.intellij.lang.folding.CustomFoldingBuilder;
import com.intellij.lang.folding.FoldingDescriptor;
import com.intellij.openapi.editor.Document;
import com.intellij.openapi.project.DumbAware;
import com.intellij.openapi.util.TextRange;
import com.intellij.psi.PsiComment;
import com.intellij.psi.PsiElement;
import com.intellij.psi.tree.IElementType;
import com.intellij.psi.util.PsiTreeUtil;
import guru.xgm.jass.extapi.psi.PsiFileBaseJASS;
import guru.xgm.jass.lang.ParserDefinitionJASS;
import guru.xgm.jass.psi.*;
import org.jetbrains.annotations.NotNull;

import java.util.Collection;
import java.util.List;

final class CustomFoldingBuilderJASS extends CustomFoldingBuilder implements DumbAware {

    @Override
    protected boolean isCustomFoldingRoot(@NotNull final ASTNode node) {
        final IElementType type = node.getElementType();
        return type == ParserDefinitionJASS.JASS_FILE || type == TypesJASS.GLOBALS_DECLARATION || type == TypesJASS.FUNCTION_DECLARATION;
    }

    @Override
    protected void buildLanguageFoldRegions(@NotNull List<FoldingDescriptor> descriptors, @NotNull PsiElement root, @NotNull Document document, boolean quick) {
        if (!(root instanceof PsiFileBaseJASS)) return;

        final Collection<PsiElement> psiElements = PsiTreeUtil.findChildrenOfAnyType(
                root,
                PsiComment.class,
                JASSGlobalsDeclaration.class,
                JASSFunctionDeclaration.class,
                JASSIfStatement.class,
                JASSLoopStatement.class
        );

        for (PsiElement psiElement : psiElements) {
            if (psiElement instanceof JASSGlobalsDeclaration ||
                    psiElement instanceof JASSFunctionDeclaration ||
                    psiElement instanceof JASSIfStatement ||
                    psiElement instanceof JASSLoopStatement
            ) {
                descriptors.add(new FoldingDescriptor(psiElement, psiElement.getTextRange()));
            }
        }
    }

    @Override
    protected String getLanguagePlaceholderText(@NotNull ASTNode node, @NotNull TextRange range) {
        final IElementType type = node.getElementType();

        if (type == TypesJASS.GLOBALS_DECLARATION) {
            final var psi = node.getPsi(JASSGlobalsDeclaration.class);
            final int size = psi.getGlobalVarDeclarationList().size();
            return "globals" + (size == 0 ? "..." : " (" + size + ")");
        }

        if (type == TypesJASS.FUNCTION_DECLARATION) {
            final var psi = node.getPsi(JASSFunctionDeclaration.class);
            final JASSFunctionHead head = psi.getFunctionHead();
            return "function" + (head == null ? "..." : " " + head.getFunctionName().getText());
        }

        if (type == TypesJASS.IF_STATEMENT) return "if...";
        if (type == TypesJASS.LOOP_STATEMENT) return "loop...";

        return null;
    }

    @Override
    protected boolean isRegionCollapsedByDefault(@NotNull ASTNode node) {
        return false;
    }
}
