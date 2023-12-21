package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.jass.psi.JassTypes.*;

public class JassGlobalsBlock extends JassBlock {
    public JassGlobalsBlock(ASTNode myNode, CodeStyleSettings codeStyleSettings) {
        super(myNode, Wrap.createWrap(WrapType.NONE, false), null, Indent.getNoneIndent(), codeStyleSettings);
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        Indent indent = Indent.getNormalIndent();

        if (isOneOf(childNode, GLOBAL_VAR_DECL)) return new JassGlobalVarBlock(childNode, myCodeStyleSettings);
        if (isOneOf(childNode, GLOBALS, ENDGLOBALS)) indent = Indent.getNoneIndent();

        return new JassBlock(childNode, null, null, indent, myCodeStyleSettings);
    }

    @Override
    public @NotNull ChildAttributes getChildAttributes(int i) {
        return new ChildAttributes(Indent.getNormalIndent(), null);
    }

    @Override
    public boolean isIncomplete() {
        return !isOneOf(myNode.getLastChildNode(), ENDGLOBALS);
    }
}
