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
import guru.xgm.jass.extapi.psi.PsiFileBaseJASS;
import guru.xgm.jass.lexer.FlexAdapterJASS;
import guru.xgm.jass.parser.JASSParser;
import guru.xgm.jass.psi.TokenSetsJASS;
import guru.xgm.jass.psi.TypesJASS;
import org.jetbrains.annotations.NotNull;

public final class ParserDefinitionJASS implements ParserDefinition {

    public static final IFileElementType JASS_FILE = new IFileElementType(LanguageJASS.INSTANCE);

    @NotNull
    @Override
    public Lexer createLexer(Project project) {
        return new FlexAdapterJASS();
    }

    @NotNull
    @Override
    public TokenSet getCommentTokens() {
        return TokenSetsJASS.COMMENTS;
    }

    @NotNull
    @Override
    public TokenSet getStringLiteralElements() {
        return TokenSet.EMPTY;
    }

    @NotNull
    @Override
    public PsiParser createParser(final Project project) {
        return new JASSParser();
    }

    @NotNull
    @Override
    public IFileElementType getFileNodeType() {
        return JASS_FILE;
    }

    @NotNull
    @Override
    public PsiFile createFile(@NotNull FileViewProvider viewProvider) {
        return new PsiFileBaseJASS(viewProvider);
    }

    @NotNull
    @Override
    public PsiElement createElement(ASTNode node) {
        return TypesJASS.Factory.createElement(node);
    }

}
