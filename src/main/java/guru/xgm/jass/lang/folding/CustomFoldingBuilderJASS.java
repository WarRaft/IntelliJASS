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
        return type == ParserDefinitionJASS.JASS_FILE || type == TypesJASS.GLOBALS_DECL || type == TypesJASS.FUNC_DECL;
    }

    @Override
    protected void buildLanguageFoldRegions(@NotNull List<FoldingDescriptor> descriptors, @NotNull PsiElement root, @NotNull Document document, boolean quick) {
        if (!(root instanceof PsiFileBaseJASS)) return;

        final Collection<PsiElement> psiElements = PsiTreeUtil.findChildrenOfAnyType(
                root,
                PsiComment.class,
                JASSGlobalsDecl.class,
                JASSFuncDecl.class,
                JASSIfStmt.class,
                JASSLoopStmt.class
        );

        for (PsiElement element : psiElements) {
            if (element instanceof JASSFuncDecl) {
                final JASSFuncHead head = ((JASSFuncDecl) element).getFuncHead();
                if (head == null) continue;

                final ASTNode s = head.getNode();
                final ASTNode e = element.getNode().findChildByType(TypesJASS.ENDFUNCTION, s);
                if (s == null || e == null) continue;

                descriptors.add(new FoldingDescriptor(element, TextRange.create(s.getStartOffset() + s.getTextLength(), e.getStartOffset())));
                continue;
            }

            if (element instanceof JASSIfStmt) {
                final JASSExpr expr = ((JASSIfStmt) element).getExpr();
                if (expr == null) continue;

                final ASTNode s = expr.getNode();
                final ASTNode e = element.getNode().findChildByType(TypesJASS.ENDIF, s);
                if (s == null || e == null) continue;

                descriptors.add(new FoldingDescriptor(element, TextRange.create(s.getStartOffset() + s.getTextLength(), e.getStartOffset())));
                continue;
            }

            if (element instanceof JASSLoopStmt) {
                foldSimple(element, TypesJASS.LOOP, TypesJASS.ENDLOOP, descriptors);
                continue;
            }

            if (element instanceof JASSGlobalsDecl) {
                foldSimple(element, TypesJASS.GLOBALS, TypesJASS.ENDGLOBALS, descriptors);
            }

        }
    }

    @Override
    protected String getLanguagePlaceholderText(@NotNull ASTNode node, @NotNull TextRange range) {
        final IElementType type = node.getElementType();

        if (type == TypesJASS.GLOBALS_DECL) {
            final var psi = node.getPsi(JASSGlobalsDecl.class);
            final int size = psi.getGlobalVarDeclList().size();
            return size == 0 ? " ... " : " (" + size + ") ";
        }

        if (type == TypesJASS.FUNC_DECL ||
                type == TypesJASS.IF_STMT ||
                type == TypesJASS.LOOP_STMT
        ) return " ... ";

        return null;
    }

    @Override
    protected boolean isRegionCollapsedByDefault(@NotNull ASTNode node) {
        final IElementType type = node.getElementType();
        //final CodeFoldingSettings settings = CodeFoldingSettings.getInstance();
        final CodeFoldingSettingsJASS jass = CodeFoldingSettingsJASS.getInstance();

        if (type == TypesJASS.GLOBALS_DECL) return jass.isFoldGlobals();
        if (type == TypesJASS.FUNC_DECL) return jass.isFoldFunction();
        if (type == TypesJASS.IF_STMT) return jass.isFoldIf();
        if (type == TypesJASS.LOOP_STMT) return jass.isFoldLoop();

        return false;
    }

    private void foldSimple(PsiElement element, IElementType start, IElementType end, List<FoldingDescriptor> descriptors) {
        final ASTNode s = element.getNode().findChildByType(start);
        final ASTNode e = element.getNode().findChildByType(end, s);

        if (s == null || e == null) return;

        descriptors.add(new FoldingDescriptor(element, TextRange.create(s.getStartOffset() + s.getTextLength(), e.getStartOffset())));
    }

}
