package guru.xgm.jgas.lang;

import com.intellij.lang.ASTNode;
import com.intellij.lang.ParserDefinition;
import com.intellij.lang.PsiParser;
import com.intellij.lexer.Lexer;
import com.intellij.openapi.project.Project;
import com.intellij.psi.FileViewProvider;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFile;
import com.intellij.psi.tree.IFileElementType;
import com.intellij.psi.tree.TokenSet;
import guru.xgm.jgas.lexer.FlexAdapter_JGAS;
import guru.xgm.jgas.extapi.psi.PsiFileBase_JGAS;
import guru.xgm.jgas.psi.TokenSets_JGAS;
import guru.xgm.jgas.psi.Types_JGAS;
import org.jetbrains.annotations.NotNull;

final class ParserDefinition_vJGAS implements ParserDefinition {

    public static final IFileElementType FILE = new IFileElementType(Language_JGAS.INSTANCE);

    @NotNull
    @Override
    public Lexer createLexer(Project project) {
        return new FlexAdapter_JGAS();
    }

    @NotNull
    @Override
    public TokenSet getCommentTokens() {
        return TokenSets_JGAS.COMMENTS;
    }

    @NotNull
    @Override
    public TokenSet getStringLiteralElements() {
        return TokenSet.EMPTY;
    }

    @NotNull
    @Override
    public PsiParser createParser(final Project project) {
        return new PsiParser_JGAS();
    }

    @NotNull
    @Override
    public IFileElementType getFileNodeType() {
        return FILE;
    }

    @NotNull
    @Override
    public PsiFile createFile(@NotNull FileViewProvider viewProvider) {
        return new PsiFileBase_JGAS(viewProvider);
    }

    @NotNull
    @Override
    public PsiElement createElement(ASTNode node) {
        return Types_JGAS.Factory.createElement(node);
    }

}
