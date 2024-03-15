package guru.xgm.language.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.language.jass.formatting.JassCodeStyleSettings;
import org.jetbrains.annotations.NotNull;

import java.util.HashMap;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.jass.psi.JassTypes.*;

public class JassGlobalsBlock extends JassBlock {
    public JassGlobalsBlock(ASTNode myNode, CodeStyleSettings code) {
        super(myNode, null, Indent.getNoneIndent(), code);
        final JassCodeStyleSettings jass = code.getCustomSettings(JassCodeStyleSettings.class);
        gvarAlignments = JassGlobalVarBlock.getAlignments(jass);
    }

    private final HashMap<String, Alignment> gvarAlignments;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        Indent indent = Indent.getNormalIndent();

        if (isOneOf(childNode, GVAR))
            return new JassGlobalVarBlock(childNode, null, Indent.getNormalIndent(), myCodeStyleSettings, gvarAlignments);
        if (isOneOf(childNode, GLOBALS, ENDGLOBALS)) indent = Indent.getNoneIndent();

        return new JassBlock(childNode, null, indent, myCodeStyleSettings);
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
