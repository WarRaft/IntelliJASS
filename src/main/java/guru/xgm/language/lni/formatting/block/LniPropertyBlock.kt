package guru.xgm.language.lni.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.lni.psi.LniTypes.*;

public class LniPropertyBlock extends LniBlock {
    public LniPropertyBlock(LniItemBlock item, ASTNode myNode, Alignment myAlignment, Indent myIndent, CodeStyleSettings codeStyleSettings) {
        super(myNode, myAlignment, myIndent, codeStyleSettings);
        this.itemBlock = item;
    }

    LniItemBlock itemBlock;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        Alignment alignment = null;

        if (isOneOf(childNode, EQ)) alignment = itemBlock.propertyEqAlignment;
        if (isOneOf(childNode, LIST)) return new LniListBlock(childNode, null, null, myCodeStyleSettings);

        return new LniBlock(childNode, alignment, null, myCodeStyleSettings);
    }
}
