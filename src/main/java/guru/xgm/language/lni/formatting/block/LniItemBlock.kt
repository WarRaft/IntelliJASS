package guru.xgm.language.lni.formatting.block;

import com.intellij.formatting.Alignment;
import com.intellij.formatting.Block;
import com.intellij.formatting.Indent;
import com.intellij.lang.ASTNode;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.language.lni.formatting.LniCodeStyleSettings;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import static com.intellij.psi.formatter.FormatterUtil.isOneOf;
import static guru.xgm.language.lni.psi.LniTypes.PROPERTY;

public class LniItemBlock extends LniBlock {
    public LniItemBlock(ASTNode myNode, Alignment myAlignment, Indent myIndent, CodeStyleSettings codeStyleSettings) {
        super(myNode, myAlignment, myIndent, codeStyleSettings);
        final var lni = codeStyleSettings.getCustomSettings(LniCodeStyleSettings.class);
        propertyEqAlignment = lni.AT_PROPERTY_EQ ? Alignment.createAlignment(true, Alignment.Anchor.LEFT) : null;
    }

    @Nullable Alignment propertyEqAlignment;

    @Override
    public Block makeSubBlock(@NotNull ASTNode childNode) {
        if (isOneOf(childNode, PROPERTY))
            return new LniPropertyBlock(this, childNode, myAlignment, myIndent, myCodeStyleSettings);

        return new LniBlock(childNode, myAlignment, myIndent, myCodeStyleSettings);
    }
}
