package guru.xgm.language.lni.lang;

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
import guru.xgm.language.lni.psi.LniTokenSets;
import guru.xgm.language.lni.extapi.psi.LniPsiFileBase;
import guru.xgm.language.lni.lexer.LniFlexAdapter;
import guru.xgm.language.lni.parser.LniParser;
import guru.xgm.language.lni.psi.LniTypes;
import org.jetbrains.annotations.NotNull;

public final class LniParserDefinition implements ParserDefinition {

    public static final IFileElementType LNI_FILE = new IFileElementType(LniLanguage.INSTANCE);

    @NotNull
    @Override
    public Lexer createLexer(Project project) {
        return new LniFlexAdapter();
    }

    @NotNull
    @Override
    public TokenSet getCommentTokens() {
        return LniTokenSets.COMMENTS;
    }

    @NotNull
    @Override
    public TokenSet getStringLiteralElements() {
        return TokenSet.EMPTY;
    }

    @NotNull
    @Override
    public PsiParser createParser(final Project project) {
        return new LniParser();
    }

    @NotNull
    @Override
    public IFileElementType getFileNodeType() {
        return LNI_FILE;
    }

    @NotNull
    @Override
    public PsiFile createFile(@NotNull FileViewProvider viewProvider) {
        return new LniPsiFileBase(viewProvider);
    }

    @NotNull
    @Override
    public PsiElement createElement(ASTNode node) {
        return LniTypes.Factory.createElement(node);
    }

}
