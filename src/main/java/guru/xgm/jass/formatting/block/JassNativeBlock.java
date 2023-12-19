package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.formatting.JassCodeStyleSettings;
import guru.xgm.jass.lang.JassLanguage;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.HashMap;

import static guru.xgm.jass.formatting.JassCodeStyleSettings.Fields.*;
import static guru.xgm.jass.psi.JassTypes.*;

public class JassNativeBlock extends JassBlock {
    public JassNativeBlock(ASTNode myNode, Wrap myWrap, Indent myIndent, CodeStyleSettings myCodeStyleSettings, HashMap<String, Alignment> alignments) {
        super(myNode, myWrap, null, myIndent, myCodeStyleSettings);
        this.alignments = alignments;
    }

    private final HashMap<String, Alignment> alignments;

    static HashMap<String, Alignment> getAlignments(JassCodeStyleSettings jass) {
        final HashMap<String, Alignment> map = new HashMap<>();
        if (jass.AT_NATIVE_DECL_NATIVE) map.put(AT_NATIVE_DECL_NATIVE, Alignment.createAlignment(true));
        if (jass.AT_NATIVE_DECL_NAME || jass.AT_NATIVE_DECL_NAME_RIGHT) map.put(AT_NATIVE_DECL_NAME, Alignment.createAlignment(true, jass.AT_NATIVE_DECL_NAME_RIGHT ? Alignment.Anchor.RIGHT : Alignment.Anchor.LEFT));
        if (jass.AT_NATIVE_DECL_TAKES) map.put(AT_NATIVE_DECL_TAKES, Alignment.createAlignment(true));
        if (jass.AT_NATIVE_DECL_RETURNS) map.put(AT_NATIVE_DECL_RETURNS, Alignment.createAlignment(true));
        return map;
    }

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        final IElementType type = childNode.getElementType();

        Alignment alignment = null;

        if (type == NATIVE) alignment = alignments.get(AT_NATIVE_DECL_NATIVE);
        if (type == FUNC_DECL_NAME) {
            childNode = childNode.getFirstChildNode();
            alignment = alignments.get(AT_NATIVE_DECL_NAME);
        }
        if (type == TAKES) alignment = alignments.get(AT_NATIVE_DECL_TAKES);
        if (type == RETURNS) alignment = alignments.get(AT_NATIVE_DECL_RETURNS);

        if (type == FUNC_TAKES || type == FUNC_RETURNS) return new JassNativeBlock(childNode, null, null, myCodeStyleSettings, alignments);

        return new JassBlock(childNode, null, alignment, null, myCodeStyleSettings);
    }
}
