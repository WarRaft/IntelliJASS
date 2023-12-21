package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.jass.formatting.JassCodeStyleSettings;
import org.jetbrains.annotations.NotNull;

import java.util.HashMap;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.jass.formatting.JassCodeStyleSettings.Fields.*;
import static guru.xgm.jass.psi.JassTypes.*;

public class JassGlobalVarBlock extends JassBlock {
    public JassGlobalVarBlock(ASTNode myNode, Alignment alignment, Indent indent, CodeStyleSettings codeStyleSettings, HashMap<String, Alignment> alignments) {
        super(myNode, alignment, indent, codeStyleSettings);
        this.alignments = alignments;
    }

    private final HashMap<String, Alignment> alignments;

    static HashMap<String, Alignment> getAlignments(JassCodeStyleSettings jass) {
        final HashMap<String, Alignment> map = new HashMap<>();

        if (jass.AT_GVAR_TYPE || jass.AT_GVAR_TYPE_RIGHT) map.put(AT_GVAR_TYPE, Alignment.createAlignment(true, jass.AT_GVAR_TYPE_RIGHT ? Alignment.Anchor.RIGHT : Alignment.Anchor.LEFT));
        if (jass.AT_GVAR_ARRAY) map.put(AT_GVAR_ARRAY, Alignment.createAlignment(true));
        if (jass.AT_GVAR_NAME || jass.AT_GVAR_NAME_RIGHT) map.put(AT_GVAR_NAME, Alignment.createAlignment(true, jass.AT_GVAR_NAME_RIGHT ? Alignment.Anchor.RIGHT : Alignment.Anchor.LEFT));
        if (jass.AT_GVAR_ASSIGN) map.put(AT_GVAR_ASSIGN, Alignment.createAlignment(true));

        return map;
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        Alignment alignment = null;

        if (isOneOf(childNode, TYPE_NAME)) {
            childNode = childNode.getFirstChildNode();
            alignment = alignments.get(AT_GVAR_TYPE);
        }

        if (isOneOf(childNode, ARRAY)) {
            alignment = alignments.get(AT_GVAR_ARRAY);
        }

        if (isOneOf(childNode, GVAR_NAME)) {
            childNode = childNode.getFirstChildNode();
            alignment = alignments.get(AT_GVAR_NAME);
        }

        if (isOneOf(childNode, EQ)) {
            alignment = alignments.get(AT_GVAR_ASSIGN);
        }

        if (isOneOf(childNode, CONSTANT, ARRAY, TYPE_NAME, EQ)) {
            return new JassGlobalVarBlock(childNode, alignment, null, myCodeStyleSettings, alignments);
        }

        return new JassBlock(childNode, alignment, null, myCodeStyleSettings);
    }

    @Override
    protected SpacingBuilder getSpacingBuilder() {
        return super.getSpacingBuilder()
                .around(ARRAY).spacing(1, 1, 0, false, 0)
                .around(TYPE_NAME).spacing(1, 1, 0, false, 0)
                .around(ID).spacing(1, 1, 0, false, 0)
                ;
    }
}
