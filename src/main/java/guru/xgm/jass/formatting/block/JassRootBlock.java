package guru.xgm.jass.formatting.block;

import com.intellij.formatting.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.formatting.JassCodeStyleSettings;
import guru.xgm.jass.lang.JassLanguage;
import org.jetbrains.annotations.NotNull;

import java.util.HashMap;

import static guru.xgm.jass.psi.JassTypes.*;

public class JassRootBlock extends JassBlock {
    public JassRootBlock(ASTNode myNode, CodeStyleSettings code, JassCodeStyleSettings jass) {
        super(myNode, null, null, Indent.getNoneIndent(), code);
        //this.jassCodeStyleSettings = jass;
        typeAlignments = JassTypeBlock.getAlignments(jass);
        nativeAligner = new JassNativeBlockAligner(jass);
    }

    //private final JassCodeStyleSettings jassCodeStyleSettings;
    final HashMap<String, Alignment> typeAlignments;
    final JassNativeBlockAligner nativeAligner;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        final IElementType type = childNode.getElementType();

        if (type == TYPE_DECL) return new JassTypeBlock(childNode, myCodeStyleSettings, typeAlignments);
        if (type == NATIVE_DECL) return new JassNativeBlock(childNode, Wrap.createWrap(WrapType.NONE, false), Indent.getNoneIndent(), myCodeStyleSettings, nativeAligner);

        return new JassBlock(childNode, myWrap, myAlignment, myIndent, myCodeStyleSettings);
    }

    @Override
    protected SpacingBuilder getSpacingBuilder() {
        return new SpacingBuilder(myCodeStyleSettings, JassLanguage.INSTANCE)
                .between(TYPE_DECL, TYPE_DECL).spacing(0, 0, 1, true, 2)
                .between(TYPE_DECL, SINGLE_LINE_COMMENT).spacing(1, 1, 0, true, 100)
                .between(NATIVE_DECL, NATIVE_DECL).spacing(0, 0, 1, true, 2)
                .between(NATIVE_DECL, SINGLE_LINE_COMMENT).spacing(1, 1, 0, true, 100)
                ;
    }
}
