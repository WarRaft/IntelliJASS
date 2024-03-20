package guru.xgm.language.lni.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import org.jetbrains.annotations.NotNull;

public class LniListBlock extends LniBlock {
    public LniListBlock(ASTNode myNode, Alignment myAlignment, Indent myIndent, CodeStyleSettings codeStyleSettings) {
        super(myNode, myAlignment, myIndent, codeStyleSettings);
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        return new LniBlock(childNode, myAlignment, Indent.getNormalIndent(), myCodeStyleSettings);
    }
}
