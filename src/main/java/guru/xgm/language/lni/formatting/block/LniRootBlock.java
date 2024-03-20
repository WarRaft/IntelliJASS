package guru.xgm.language.lni.formatting.block;

import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.formatting.SpacingBuilder;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.language.lni.lang.LniLanguage;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.lni.psi.LniTypes.ITEM;

public class LniRootBlock extends LniBlock {
    public LniRootBlock(ASTNode myNode, CodeStyleSettings code) {
        super(myNode, null, Indent.getNoneIndent(), code);
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        if (isOneOf(childNode, ITEM))
            return new LniItemBlock(childNode, null, Indent.getNoneIndent(), myCodeStyleSettings);
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
