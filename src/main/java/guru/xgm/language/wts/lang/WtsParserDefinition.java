package guru.xgm.language.wts.lang;

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
import guru.xgm.language.wts.extapi.psi.WtsPsiFileBase;
import guru.xgm.language.wts.lexer.WtsFlexAdapter;
import guru.xgm.language.wts.parser.WtsParser;
import guru.xgm.language.wts.psi.WtsTokenSets;
import guru.xgm.language.wts.psi.WtsTypes;
import org.jetbrains.annotations.NotNull;

public final class WtsParserDefinition implements ParserDefinition {

    public static final IFileElementType WTS_FILE = new IFileElementType(WtsLanguage.INSTANCE);

    @NotNull
    @Override
    public Lexer createLexer(Project project) {
        return new WtsFlexAdapter();
    }

    @NotNull
    @Override
    public TokenSet getCommentTokens() {
        return WtsTokenSets.COMMENTS;
    }

    @NotNull
    @Override
    public TokenSet getStringLiteralElements() {
        return TokenSet.EMPTY;
    }

    @NotNull
    @Override
    public PsiParser createParser(final Project project) {
        return new WtsParser();
    }

    @NotNull
    @Override
    public IFileElementType getFileNodeType() {
        return WTS_FILE;
    }

    @NotNull
    @Override
    public PsiFile createFile(@NotNull FileViewProvider viewProvider) {
        return new WtsPsiFileBase(viewProvider);
    }

    @NotNull
    @Override
    public PsiElement createElement(ASTNode node) {
        return WtsTypes.Factory.createElement(node);
    }

}
