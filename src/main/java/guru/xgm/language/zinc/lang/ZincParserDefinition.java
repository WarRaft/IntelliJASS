package guru.xgm.language.zinc.lang;

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
import guru.xgm.language.zinc.lexer.ZincFlexAdapter;
import guru.xgm.language.zinc.psi.ZincTokenSets;
import guru.xgm.language.zinc.extapi.psi.ZincPsiFileBase;
import guru.xgm.zinc.parser.ZincParser;
import guru.xgm.zinc.psi.ZincTypes;
import org.jetbrains.annotations.NotNull;

public final class ZincParserDefinition implements ParserDefinition {

    public static final IFileElementType ZINC_FILE = new IFileElementType(ZincLanguage.INSTANCE);

    @NotNull
    @Override
    public Lexer createLexer(Project project) {
        return new ZincFlexAdapter();
    }

    @NotNull
    @Override
    public TokenSet getCommentTokens() {
        return ZincTokenSets.COMMENTS;
    }

    @NotNull
    @Override
    public TokenSet getStringLiteralElements() {
        return TokenSet.EMPTY;
    }

    @NotNull
    @Override
    public PsiParser createParser(final Project project) {
        return new ZincParser();
    }

    @NotNull
    @Override
    public IFileElementType getFileNodeType() {
        return ZINC_FILE;
    }

    @NotNull
    @Override
    public PsiFile createFile(@NotNull FileViewProvider viewProvider) {
        return new ZincPsiFileBase(viewProvider);
    }

    @NotNull
    @Override
    public PsiElement createElement(ASTNode node) {
        return ZincTypes.Factory.createElement(node);
    }

}
