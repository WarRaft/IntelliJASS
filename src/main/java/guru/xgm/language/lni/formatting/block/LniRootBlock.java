package guru.xgm.language.lni.formatting.block;

import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.formatting.SpacingBuilder;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.language.lni.formatting.LniCodeStyleSettings;
import guru.xgm.language.lni.lang.LniLanguage;
import org.jetbrains.annotations.NotNull;

@SuppressWarnings("CommentedOutCode")
public class LniRootBlock extends LniBlock {
    public LniRootBlock(ASTNode myNode, CodeStyleSettings code, LniCodeStyleSettings settings) {
        super(myNode, null, Indent.getNoneIndent(), code);
        //typeAlignments = JassTypeBlock.getAlignments(jass);
        //nativeAligner = new AngelScriptNativeBlockAligner(jass);
    }

    //private final HashMap<String, Alignment> typeAlignments;
    //private final JassNativeBlockAligner nativeAligner;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        //if (isOneOf(childNode, Var)) return new JassFunctionBlock(childNode, null, Indent.getNoneIndent(), myCodeStyleSettings);
        //if (isOneOf(childNode, TYPE_DEF)) return new JassTypeBlock(childNode, myCodeStyleSettings, typeAlignments);
        //if (isOneOf(childNode, NATIVE_DEF)) return new JassNativeBlock(childNode, Indent.getNoneIndent(), myCodeStyleSettings, nativeAligner);
        //if (isOneOf(childNode, GLOBALS_DEF)) return new JassGlobalsBlock(childNode, myCodeStyleSettings);
        return new LniBlock(childNode, myAlignment, myIndent, myCodeStyleSettings);
    }

    @Override
    protected SpacingBuilder getSpacingBuilder() {
        return new SpacingBuilder(myCodeStyleSettings, LniLanguage.INSTANCE)
                //.between(TYPE_DEF, TYPE_DEF).spacing(0, 0, 1, true, 2)
                //.between(TYPE_DEF, SINGLE_LINE_COMMENT).spacing(1, 1, 0, true, 100)
                //.between(NATIVE_DEF, NATIVE_DEF).spacing(0, 0, 1, true, 2)
                //.between(NATIVE_DEF, SINGLE_LINE_COMMENT).spacing(1, 1, 0, true, 100)
                ;
    }
}
