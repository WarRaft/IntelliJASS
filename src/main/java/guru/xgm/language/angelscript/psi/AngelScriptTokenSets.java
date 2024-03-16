package guru.xgm.language.angelscript.psi;

import com.intellij.psi.tree.TokenSet;

import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;

public interface AngelScriptTokenSets {
    TokenSet COMMENTS = TokenSet.create(SINGLE_LINE_COMMENT, MULTI_LINE_COMMENT);
}
