package guru.xgm.language.jass.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.ChildAttributes;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.jass.psi.JassTypes.*;

public class JassFunctionBlock extends JassBlock {
    public JassFunctionBlock(ASTNode myNode, Alignment myAlignment, Indent myIndent, CodeStyleSettings codeStyleSettings) {
        super(myNode, myAlignment, myIndent, codeStyleSettings);
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        Indent indent = Indent.getNormalIndent();

        if (isOneOf(childNode, FUNCTION, ENDFUNCTION)) indent = Indent.getNoneIndent();
        if (isOneOf(childNode, STMT)) return new JassStatementBlock(childNode.getFirstChildNode(), null, Indent.getNormalIndent(), myCodeStyleSettings);

        return new JassBlock(childNode, null, indent, myCodeStyleSettings);
    }

    @Override
    public @NotNull ChildAttributes getChildAttributes(int i) {
        return new ChildAttributes(Indent.getNormalIndent(), null);
    }

    @Override
    public boolean isIncomplete() {
        return !isOneOf(myNode.getLastChildNode(), ENDFUNCTION);
    }
}
