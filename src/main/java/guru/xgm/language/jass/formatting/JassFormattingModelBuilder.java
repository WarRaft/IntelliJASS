package guru.xgm.language.jass.formatting;

import com.intellij.formatting.FormattingContext;
import com.intellij.formatting.FormattingModel;
import com.intellij.formatting.FormattingModelBuilder;
import com.intellij.formatting.FormattingModelProvider;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.language.jass.formatting.block.JassRootBlock;
import org.jetbrains.annotations.NotNull;

final class JassFormattingModelBuilder implements FormattingModelBuilder {

    @Override
    public @NotNull FormattingModel createModel(@NotNull FormattingContext formattingContext) {
        final CodeStyleSettings code = formattingContext.getCodeStyleSettings();

        final JassCodeStyleSettings jass = code.getCustomSettings(JassCodeStyleSettings.class);
        return FormattingModelProvider
                .createFormattingModelForPsiFile(
                        formattingContext.getContainingFile(),
                        new JassRootBlock(formattingContext.getNode(), code, jass),
                        code
                );
    }

}
