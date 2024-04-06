package guru.xgm.language.angelscript.psi;

import com.intellij.psi.tree.TokenSet;

import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;

public interface AngelScriptTokenSets {
    TokenSet COMMENTS = TokenSet.create(LINE_COMMENT, BLOCK_COMMENT);
}
