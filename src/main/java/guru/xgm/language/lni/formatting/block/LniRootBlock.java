package guru.xgm.language.lni.formatting.block;

import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
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
}
