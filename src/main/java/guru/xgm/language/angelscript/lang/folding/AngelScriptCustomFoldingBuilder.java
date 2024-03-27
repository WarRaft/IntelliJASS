package guru.xgm.language.angelscript.lang.folding;

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
import guru.xgm.language.angelscript.extapi.psi.AngelScriptPsiFileBase;
import guru.xgm.language.angelscript.lang.AngelScriptParserDefinition;
import guru.xgm.language.angelscript.psi.AngelScriptEnums;
import org.jetbrains.annotations.NotNull;

import java.util.Collection;
import java.util.List;

import static guru.xgm.language.angelscript.psi.AngelScriptTypes.ENUMS;

final class AngelScriptCustomFoldingBuilder extends CustomFoldingBuilder implements DumbAware {

    @Override
    protected boolean isCustomFoldingRoot(@NotNull final ASTNode node) {
        final IElementType type = node.getElementType();
        return type == AngelScriptParserDefinition.ANGELSCRIPT_FILE || type == ENUMS;
    }

    @Override
    protected void buildLanguageFoldRegions(@NotNull List<FoldingDescriptor> descriptors, @NotNull PsiElement root, @NotNull Document document, boolean quick) {
        if (!(root instanceof AngelScriptPsiFileBase)) return;

        final Collection<PsiElement> psiElements = PsiTreeUtil.findChildrenOfAnyType(
                root,
                PsiComment.class,
                AngelScriptEnums.class
        );

        for (PsiElement element : psiElements) {
            if (element instanceof AngelScriptEnums enums) {
                final var id = enums.getId();

                final var s = id.getNode();
                final var e = enums.getNode();

                descriptors.add(new FoldingDescriptor(element, TextRange.create(s.getStartOffset() + s.getTextLength(), e.getStartOffset() + e.getTextLength())));
            }
        }
    }

    @Override
    protected String getLanguagePlaceholderText(@NotNull ASTNode node, @NotNull TextRange range) {
        final IElementType type = node.getElementType();

        if (type == ENUMS) {
            final var psi = node.getPsi(AngelScriptEnums.class);
            final var block = psi.getEnumStatBlock();
            return block == null ? "..." : sizeable(block.getEnumItemList());
        }
        return null;
    }

    private String sizeable(List<?> list) {
        final int size = list.size();
        return size == 0 ? " ... " : " (" + size + ") ";
    }

    @Override
    protected boolean isRegionCollapsedByDefault(@NotNull ASTNode node) {
        final IElementType type = node.getElementType();
        final var settings = AngelScriptCodeFoldingSettings.getInstance();

        if (type == ENUMS) return settings.isFoldEnum();
        return false;
    }

    private void foldSimple(PsiElement element, IElementType start, IElementType end, List<FoldingDescriptor> descriptors) {
        final ASTNode s = element.getNode().findChildByType(start);
        final ASTNode e = element.getNode().findChildByType(end, s);

        if (s == null || e == null) return;

        descriptors.add(new FoldingDescriptor(element, TextRange.create(s.getStartOffset() + s.getTextLength(), e.getStartOffset())));
    }

}
