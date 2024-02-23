package guru.xgm.angelscript.formatting.block;

import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.formatting.SpacingBuilder;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.angelscript.formatting.AngelScriptCodeStyleSettings;
import guru.xgm.angelscript.lang.AngelScriptLanguage;
import org.jetbrains.annotations.NotNull;

@SuppressWarnings("CommentedOutCode")
public class AngelScriptRootBlock extends AngelScriptBlock {
    public AngelScriptRootBlock(ASTNode myNode, CodeStyleSettings code, AngelScriptCodeStyleSettings settings) {
        super(myNode, null, Indent.getNoneIndent(), code);
        //typeAlignments = JassTypeBlock.getAlignments(jass);
        //nativeAligner = new AngelScriptNativeBlockAligner(jass);
    }

    //private final HashMap<String, Alignment> typeAlignments;
    //private final JassNativeBlockAligner nativeAligner;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        //if (isOneOf(childNode, TYPE_DEF)) return new JassTypeBlock(childNode, myCodeStyleSettings, typeAlignments);
        //if (isOneOf(childNode, NATIVE_DEF)) return new JassNativeBlock(childNode, Indent.getNoneIndent(), myCodeStyleSettings, nativeAligner);
        //if (isOneOf(childNode, GLOBALS_DEF)) return new JassGlobalsBlock(childNode, myCodeStyleSettings);
        //if (isOneOf(childNode, FUNC_DEF)) return new JassFunctionBlock(childNode, null, Indent.getNoneIndent(), myCodeStyleSettings);

        return new AngelScriptBlock(childNode, myAlignment, myIndent, myCodeStyleSettings);
    }

    @Override
    protected SpacingBuilder getSpacingBuilder() {
        return new SpacingBuilder(myCodeStyleSettings, AngelScriptLanguage.INSTANCE)
                //.between(TYPE_DEF, TYPE_DEF).spacing(0, 0, 1, true, 2)
                //.between(TYPE_DEF, SINGLE_LINE_COMMENT).spacing(1, 1, 0, true, 100)
                //.between(NATIVE_DEF, NATIVE_DEF).spacing(0, 0, 1, true, 2)
                //.between(NATIVE_DEF, SINGLE_LINE_COMMENT).spacing(1, 1, 0, true, 100)
                ;
    }
}
