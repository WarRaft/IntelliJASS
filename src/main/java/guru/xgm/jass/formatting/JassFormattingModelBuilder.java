package guru.xgm.jass.formatting;

import com.intellij.formatting.*;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.jass.formatting.block.JassRootBlock;
import org.jetbrains.annotations.NotNull;

final class JassFormattingModelBuilder implements FormattingModelBuilder {

    @Override
    public @NotNull FormattingModel createModel(@NotNull FormattingContext formattingContext) {
        final CodeStyleSettings codeStyleSettings = formattingContext.getCodeStyleSettings();
        return FormattingModelProvider
                .createFormattingModelForPsiFile(
                        formattingContext.getContainingFile(),
                        new JassRootBlock(formattingContext.getNode(), codeStyleSettings),
                        codeStyleSettings
                );
    }

}
