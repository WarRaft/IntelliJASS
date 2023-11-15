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

        for (PsiElement psiElement : psiElements) {


            /*
            final ASTNode lBrace = element.getNode().findChildByType(DartTokenTypes.LBRACE);
        final ASTNode rBrace = element.getNode().findChildByType(DartTokenTypes.RBRACE, lBrace);
        if (lBrace != null && rBrace != null && rBrace.getStartOffset() - lBrace.getStartOffset() > 2) {
          descriptors.add(new FoldingDescriptor(element, TextRange.create(lBrace.getStartOffset(), rBrace.getStartOffset() + 1)));
        }
             */

            if (psiElement instanceof JASSGlobalsDecl ||
                    psiElement instanceof JASSFuncDecl ||
                    psiElement instanceof JASSIfStmt ||
                    psiElement instanceof JASSLoopStmt
            ) {
                descriptors.add(new FoldingDescriptor(psiElement, psiElement.getTextRange()));
            }
        }
    }

    @Override
    protected String getLanguagePlaceholderText(@NotNull ASTNode node, @NotNull TextRange range) {
        final IElementType type = node.getElementType();

        if (type == TypesJASS.GLOBALS_DECL) {
            final var psi = node.getPsi(JASSGlobalsDecl.class);
            final int size = psi.getGlobalVarDeclList().size();
            return "globals" + (size == 0 ? "..." : " (" + size + ")");
        }

        if (type == TypesJASS.FUNC_DECL) {
            final var psi = node.getPsi(JASSFuncDecl.class);
            final JASSFuncHead head = psi.getFuncHead();
            return "function" + (head == null ? "..." : " " + head.getFuncDeclName().getText());
        }

        if (type == TypesJASS.IF_STMT) return "if...";
        if (type == TypesJASS.LOOP_STMT) return "loop...";

        return null;
    }

    @Override
    protected boolean isRegionCollapsedByDefault(@NotNull ASTNode node) {
        final IElementType type = node.getElementType();
        //final CodeFoldingSettings settings = CodeFoldingSettings.getInstance();
        final CodeFoldingSettingsJASS jass = CodeFoldingSettingsJASS.getInstance();

        if (type == TypesJASS.GLOBALS_DECL) return jass.isGlobals();
        if (type == TypesJASS.FUNC_DECL) return jass.isFunction();

        return false;
    }
}
