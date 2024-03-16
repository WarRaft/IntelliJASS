package guru.xgm.language.zinc.formatting.block;

import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.formatting.SpacingBuilder;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.language.zinc.lang.ZincLanguage;
import guru.xgm.language.zinc.formatting.ZincCodeStyleSettings;
import org.jetbrains.annotations.NotNull;

import static guru.xgm.language.zinc.psi.ZincTypes.*;

@SuppressWarnings("CommentedOutCode")
public class ZincRootBlock extends ZincBlock {
    public ZincRootBlock(ASTNode myNode, CodeStyleSettings code, ZincCodeStyleSettings zinc) {
        super(myNode, null, Indent.getNoneIndent(), code);
        //typeAlignments = JassTypeBlock.getAlignments(jass);
        //nativeAligner = new ZincNativeBlockAligner(jass);
    }

    //private final HashMap<String, Alignment> typeAlignments;
    //private final JassNativeBlockAligner nativeAligner;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        //if (isOneOf(childNode, TYPE_DEF)) return new JassTypeBlock(childNode, myCodeStyleSettings, typeAlignments);
        //if (isOneOf(childNode, NATIVE_DEF)) return new JassNativeBlock(childNode, Indent.getNoneIndent(), myCodeStyleSettings, nativeAligner);
        //if (isOneOf(childNode, GLOBALS_DEF)) return new JassGlobalsBlock(childNode, myCodeStyleSettings);
        //if (isOneOf(childNode, FUNC_DEF)) return new JassFunctionBlock(childNode, null, Indent.getNoneIndent(), myCodeStyleSettings);

        return new ZincBlock(childNode, myAlignment, myIndent, myCodeStyleSettings);
    }

    @Override
    protected SpacingBuilder getSpacingBuilder() {
        return new SpacingBuilder(myCodeStyleSettings, ZincLanguage.INSTANCE)
                //.between(TYPE_DEF, TYPE_DEF).spacing(0, 0, 1, true, 2)
                //.between(TYPE_DEF, SINGLE_LINE_COMMENT).spacing(1, 1, 0, true, 100)
                //.between(NATIVE_DEF, NATIVE_DEF).spacing(0, 0, 1, true, 2)
                //.between(NATIVE_DEF, SINGLE_LINE_COMMENT).spacing(1, 1, 0, true, 100)
                ;
    }
}
