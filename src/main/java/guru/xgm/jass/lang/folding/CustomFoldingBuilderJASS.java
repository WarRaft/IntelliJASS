package guru.xgm.jass.lang.folding;

import com.intellij.lang.ASTNode;
import com.intellij.lang.folding.CustomFoldingBuilder;
import com.intellij.lang.folding.FoldingDescriptor;
import com.intellij.openapi.editor.Document;
import com.intellij.openapi.project.DumbAware;
import com.intellij.openapi.util.TextRange;
import com.intellij.psi.PsiElement;
import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.lang.ParserDefinitionJASS;
import org.jetbrains.annotations.NotNull;

import java.util.List;

final class CustomFoldingBuilderJASS extends CustomFoldingBuilder implements DumbAware {

    @Override
    protected void buildLanguageFoldRegions(@NotNull List<FoldingDescriptor> descriptors, @NotNull PsiElement root, @NotNull Document document, boolean quick) {
        System.out.println("catcha !");
        System.out.println(root);

    }

    @Override
    protected String getLanguagePlaceholderText(@NotNull ASTNode node, @NotNull TextRange range) {
        return null;
    }

    @Override
    protected boolean isRegionCollapsedByDefault(@NotNull ASTNode node) {
        final IElementType type = node.getElementType();
        return type == ParserDefinitionJASS.JASS_FILE;
    }
}
