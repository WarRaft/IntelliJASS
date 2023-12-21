package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import org.jetbrains.annotations.NotNull;

import static guru.xgm.jass.psi.JassTypes.*;

public class JassGlobalVarBlock extends JassBlock {
    public JassGlobalVarBlock(ASTNode myNode, CodeStyleSettings codeStyleSettings) {
        super(myNode, Wrap.createWrap(WrapType.NONE, false), null, Indent.getNormalIndent(), codeStyleSettings);
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        return new JassBlock(childNode, null, null, null, myCodeStyleSettings);
    }

    @Override
    protected SpacingBuilder getSpacingBuilder() {
        return super.getSpacingBuilder()
                .between(CONSTANT, TYPE_NAME).spacing(1, 1, 0, false, 0);
    }
}
