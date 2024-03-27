package guru.xgm.language.angelscript.lang;

import com.intellij.lang.BracePair;
import com.intellij.lang.PairedBraceMatcher;
import com.intellij.psi.PsiFile;
import com.intellij.psi.tree.IElementType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;

// https://intellij-support.jetbrains.com/hc/en-us/community/posts/115000393430-Auto-closing-braces-in-a-custom-language-BraceMatcher-not-working
public class AngelScriptPairedBraceMatcher implements PairedBraceMatcher {
    @Override
    public BracePair @NotNull [] getPairs() {
        return new BracePair[]{
                new BracePair(LBRACE, RBRACE, false),
                new BracePair(LPAREN, RPAREN, false),
                new BracePair(LBRACK, RBRACK, false),
        };
    }

    @Override
    public boolean isPairedBracesAllowedBeforeType(@NotNull IElementType lbraceType, @Nullable IElementType contextType) {
        return false;
    }

    @Override
    public int getCodeConstructStart(PsiFile file, int openingBraceOffset) {
        return 0;
    }
}
