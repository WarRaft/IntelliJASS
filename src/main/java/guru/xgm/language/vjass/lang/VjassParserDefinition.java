package guru.xgm.language.vjass.lang;

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
import guru.xgm.language.vjass.extapi.psi.VjassPsiFileBase;
import guru.xgm.language.vjass.lexer.VjassFlexAdapter;
import guru.xgm.language.vjass.parser.VjassParser;
import guru.xgm.language.vjass.psi.VjassTokenSets;
import guru.xgm.language.vjass.psi.VjassTypes;
import org.jetbrains.annotations.NotNull;

public final class VjassParserDefinition implements ParserDefinition {

    public static final IFileElementType VJASS_FILE = new IFileElementType(VjassLanguage.INSTANCE);

    @NotNull
    @Override
    public Lexer createLexer(Project project) {
        return new VjassFlexAdapter();
    }

    @NotNull
    @Override
    public TokenSet getCommentTokens() {
        return VjassTokenSets.COMMENTS;
    }

    @NotNull
    @Override
    public TokenSet getStringLiteralElements() {
        return TokenSet.EMPTY;
    }

    @NotNull
    @Override
    public PsiParser createParser(final Project project) {
        return new VjassParser();
    }

    @NotNull
    @Override
    public IFileElementType getFileNodeType() {
        return VJASS_FILE;
    }

    @NotNull
    @Override
    public PsiFile createFile(@NotNull FileViewProvider viewProvider) {
        return new VjassPsiFileBase(viewProvider);
    }

    @NotNull
    @Override
    public PsiElement createElement(ASTNode node) {
        return VjassTypes.Factory.createElement(node);
    }

}
