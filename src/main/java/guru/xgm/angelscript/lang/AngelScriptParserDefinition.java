package guru.xgm.angelscript.lang;

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
import guru.xgm.angelscript.psi.AngelScriptTokenSets;
import guru.xgm.angelscript.extapi.psi.AngelScriptPsiFileBase;
import guru.xgm.angelscript.lexer.AngelScriptFlexAdapter;
import guru.xgm.angelscript.parser.AngelScriptParser;
import guru.xgm.angelscript.psi.AngelScriptTypes;
import org.jetbrains.annotations.NotNull;

public final class AngelScriptParserDefinition implements ParserDefinition {

    public static final IFileElementType ANGELSCRIPT_FILE = new IFileElementType(AngelScriptLanguage.INSTANCE);

    @NotNull
    @Override
    public Lexer createLexer(Project project) {
        return new AngelScriptFlexAdapter();
    }

    @NotNull
    @Override
    public TokenSet getCommentTokens() {
        return AngelScriptTokenSets.COMMENTS;
    }

    @NotNull
    @Override
    public TokenSet getStringLiteralElements() {
        return TokenSet.EMPTY;
    }

    @NotNull
    @Override
    public PsiParser createParser(final Project project) {
        return new AngelScriptParser();
    }

    @NotNull
    @Override
    public IFileElementType getFileNodeType() {
        return ANGELSCRIPT_FILE;
    }

    @NotNull
    @Override
    public PsiFile createFile(@NotNull FileViewProvider viewProvider) {
        return new AngelScriptPsiFileBase(viewProvider);
    }

    @NotNull
    @Override
    public PsiElement createElement(ASTNode node) {
        return AngelScriptTypes.Factory.createElement(node);
    }

}
