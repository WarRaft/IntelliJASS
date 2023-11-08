package guru.xgm.jass.lang;

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
import guru.xgm.jass.lexer.FlexAdapter_JASS;
import guru.xgm.jass.extapi.psi.PsiFileBase_JASS;
import guru.xgm.jass.psi.TokenSets_JASS;
import guru.xgm.jass.psi.Types_JASS;
import org.jetbrains.annotations.NotNull;

final class ParserDefinition_JASS implements ParserDefinition {

    public static final IFileElementType FILE = new IFileElementType(Language_JASS.INSTANCE);

    @NotNull
    @Override
    public Lexer createLexer(Project project) {
        return new FlexAdapter_JASS();
    }

    @NotNull
    @Override
    public TokenSet getCommentTokens() {
        return TokenSets_JASS.COMMENTS;
    }

    @NotNull
    @Override
    public TokenSet getStringLiteralElements() {
        return TokenSet.EMPTY;
    }

    @NotNull
    @Override
    public PsiParser createParser(final Project project) {
        return new PsiParser_JASS();
    }

    @NotNull
    @Override
    public IFileElementType getFileNodeType() {
        return FILE;
    }

    @NotNull
    @Override
    public PsiFile createFile(@NotNull FileViewProvider viewProvider) {
        return new PsiFileBase_JASS(viewProvider);
    }

    @NotNull
    @Override
    public PsiElement createElement(ASTNode node) {
        return Types_JASS.Factory.createElement(node);
    }

}
