package guru.xgm.jass.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.ChildAttributes;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.jass.psi.JassTypes.*;

public class JassStatementBlock extends JassBlock {
    public JassStatementBlock(ASTNode myNode, Alignment myAlignment, Indent myIndent, CodeStyleSettings codeStyleSettings) {
        super(myNode, myAlignment, myIndent, codeStyleSettings);
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        Indent indent = null;

        if (isOneOf(childNode, STMT)) childNode = childNode.getFirstChildNode();
        if (isOneOf(childNode, ELSE_IF_STMT, ELSE_STMT)) indent = Indent.getNoneIndent();

        if (isOneOf(childNode, STMT, IF_STMT, ELSE_IF_STMT, ELSE_STMT, LOOP_STMT)) return new JassStatementBlock(childNode, null, indent, myCodeStyleSettings);

        if (isOneOf(childNode, ENDIF, ENDLOOP)) indent = Indent.getNoneIndent();

        return new JassBlock(childNode, null, indent, myCodeStyleSettings);
    }

    @Override
    public @NotNull ChildAttributes getChildAttributes(int i) {
        return new ChildAttributes(Indent.getNormalIndent(), null);
    }

    @Override
    public boolean isIncomplete() {
        if (isOneOf(myNode, IF_STMT)) return !isOneOf(myNode.getLastChildNode(), ENDIF);
        if (isOneOf(myNode, LOOP_STMT)) return !isOneOf(myNode.getLastChildNode(), ENDLOOP);
        return false;
    }
}
