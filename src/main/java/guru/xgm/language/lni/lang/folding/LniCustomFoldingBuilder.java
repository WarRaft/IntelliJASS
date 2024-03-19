package guru.xgm.language.lni.lang.folding;

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

import guru.xgm.language.lni.extapi.psi.LniPsiFileBase;
import guru.xgm.language.lni.lang.LniParserDefinition;
import guru.xgm.language.lni.psi.*;
import org.jetbrains.annotations.NotNull;

import java.util.Collection;
import java.util.List;

final class LniCustomFoldingBuilder extends CustomFoldingBuilder implements DumbAware {

    @Override
    protected boolean isCustomFoldingRoot(@NotNull final ASTNode node) {
        final IElementType type = node.getElementType();
        return type == LniParserDefinition.LNI_FILE || type == LniTypes.HEAD;
    }

    @Override
    protected void buildLanguageFoldRegions(@NotNull List<FoldingDescriptor> descriptors, @NotNull PsiElement root, @NotNull Document document, boolean quick) {
        if (!(root instanceof LniPsiFileBase)) return;

        final Collection<PsiElement> psiElements = PsiTreeUtil.findChildrenOfAnyType(
                root,
                PsiComment.class,
                LniItem.class
        );

        for (PsiElement element : psiElements) {
            if (element instanceof LniItem item) {
                int start;

                final var head = item.getHead();
                if (head == null) {
                    final var list = item.getPropertyList();
                    if (list.isEmpty()) continue;
                    final var id = list.get(0).getId();
                    start = id.getTextOffset() + id.getTextLength();
                } else {
                    start = head.getTextOffset() + head.getTextLength();
                }

                if (start < 0) continue;
                descriptors.add(new FoldingDescriptor(element, TextRange.create(start, item.getTextOffset() + item.getTextLength())));
            }
        }
    }

    @Override
    protected String getLanguagePlaceholderText(@NotNull ASTNode node, @NotNull TextRange range) {
        final IElementType type = node.getElementType();
        if (type == LniTypes.ITEM) {
            final var psi = node.getPsi(LniItem.class);
            final int size = psi.getPropertyList().size();
            return size == 0 ? "..." : "...(" + size + ")";
        }
        return null;
    }

    @Override
    protected boolean isRegionCollapsedByDefault(@NotNull ASTNode node) {
        final IElementType type = node.getElementType();
        final var settings = LniCodeFoldingSettings.getInstance();

        if (type == LniTypes.ITEM) return settings.isFoldItems();
        return false;
    }
}
