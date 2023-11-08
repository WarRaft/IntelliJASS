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
import org.intellij.sdk.language.jass.JassLexerAdapter;
import org.intellij.sdk.language.jass.psi.JassFile;
import org.intellij.sdk.language.jass.psi.JassTokenSets;
import org.intellij.sdk.language.jass.psi.JassTypes;
import org.intellij.sdk.language.parser.JassParser;
import org.jetbrains.annotations.NotNull;

final class ParserDefinition_JASS implements ParserDefinition {

    public static final IFileElementType FILE = new IFileElementType(Language_JASS.INSTANCE);

    @NotNull
    @Override
    public Lexer createLexer(Project project) {
        return new JassLexerAdapter();
    }

    @NotNull
    @Override
    public TokenSet getCommentTokens() {
        return JassTokenSets.COMMENTS;
    }

    @NotNull
    @Override
    public TokenSet getStringLiteralElements() {
        return TokenSet.EMPTY;
    }

    @NotNull
    @Override
    public PsiParser createParser(final Project project) {
        return new JassParser();
    }

    @NotNull
    @Override
    public IFileElementType getFileNodeType() {
        return FILE;
    }

    @NotNull
    @Override
    public PsiFile createFile(@NotNull FileViewProvider viewProvider) {
        return new JassFile(viewProvider);
    }

    @NotNull
    @Override
    public PsiElement createElement(ASTNode node) {
        return JassTypes.Factory.createElement(node);
    }

}
