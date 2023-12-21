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
import guru.xgm.jass.extapi.psi.JassPsiFileBase;
import guru.xgm.jass.lang.JassParserDefinition;
import guru.xgm.jass.psi.*;
import org.jetbrains.annotations.NotNull;

import java.util.Collection;
import java.util.List;

final class JassCustomFoldingBuilder extends CustomFoldingBuilder implements DumbAware {

    @Override
    protected boolean isCustomFoldingRoot(@NotNull final ASTNode node) {
        final IElementType type = node.getElementType();
        return type == JassParserDefinition.JASS_FILE || type == JassTypes.GLOBALS_DECL || type == JassTypes.FUNC_DECL;
    }

    @Override
    protected void buildLanguageFoldRegions(@NotNull List<FoldingDescriptor> descriptors, @NotNull PsiElement root, @NotNull Document document, boolean quick) {
        if (!(root instanceof JassPsiFileBase)) return;

        final Collection<PsiElement> psiElements = PsiTreeUtil.findChildrenOfAnyType(
                root,
                PsiComment.class,
                JassGlobalsDecl.class,
                JassFuncDecl.class,
                JassIfStmt.class,
                JassLoopStmt.class
        );

        for (PsiElement element : psiElements) {
            if (element instanceof JassFuncDecl func) {
                final PsiElement start = (func.getFuncReturns() != null) ? func.getFuncReturns() : func.getFuncTakes();

                if (start == null) continue;

                final ASTNode s = start.getNode();
                final ASTNode e = element.getNode().findChildByType(JassTypes.ENDFUNCTION, s);
                if (s == null || e == null) continue;

                descriptors.add(new FoldingDescriptor(element, TextRange.create(s.getStartOffset() + s.getTextLength(), e.getStartOffset())));
                continue;
            }

            if (element instanceof JassIfStmt ifStmt) {
                final JassExpr expr = ifStmt.getExpr();
                if (expr == null) continue;

                final ASTNode s = expr.getNode();
                final ASTNode e = element.getNode().findChildByType(JassTypes.ENDIF, s);
                if (s == null || e == null) continue;

                descriptors.add(new FoldingDescriptor(element, TextRange.create(s.getStartOffset() + s.getTextLength(), e.getStartOffset())));
                continue;
            }

            if (element instanceof JassLoopStmt) {
                foldSimple(element, JassTypes.LOOP, JassTypes.ENDLOOP, descriptors);
                continue;
            }

            if (element instanceof JassGlobalsDecl) {
                foldSimple(element, JassTypes.GLOBALS, JassTypes.ENDGLOBALS, descriptors);
            }

        }
    }

    @Override
    protected String getLanguagePlaceholderText(@NotNull ASTNode node, @NotNull TextRange range) {
        final IElementType type = node.getElementType();

        if (type == JassTypes.GLOBALS_DECL) {
            final var psi = node.getPsi(JassGlobalsDecl.class);
            final int size = psi.getGvarDeclList().size();
            return size == 0 ? " ... " : " (" + size + ") ";
        }

        if (type == JassTypes.FUNC_DECL ||
                type == JassTypes.IF_STMT ||
                type == JassTypes.LOOP_STMT
        ) return " ... ";

        return null;
    }

    @Override
    protected boolean isRegionCollapsedByDefault(@NotNull ASTNode node) {
        final IElementType type = node.getElementType();
        //final CodeFoldingSettings settings = CodeFoldingSettings.getInstance();
        final JassCodeFoldingSettings jass = JassCodeFoldingSettings.getInstance();

        if (type == JassTypes.GLOBALS_DECL) return jass.isFoldGlobals();
        if (type == JassTypes.FUNC_DECL) return jass.isFoldFunction();
        if (type == JassTypes.IF_STMT) return jass.isFoldIf();
        if (type == JassTypes.LOOP_STMT) return jass.isFoldLoop();

        return false;
    }

    private void foldSimple(PsiElement element, IElementType start, IElementType end, List<FoldingDescriptor> descriptors) {
        final ASTNode s = element.getNode().findChildByType(start);
        final ASTNode e = element.getNode().findChildByType(end, s);

        if (s == null || e == null) return;

        descriptors.add(new FoldingDescriptor(element, TextRange.create(s.getStartOffset() + s.getTextLength(), e.getStartOffset())));
    }

}
