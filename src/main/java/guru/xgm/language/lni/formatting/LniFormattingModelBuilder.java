package guru.xgm.language.lni.formatting;

import com.intellij.formatting.FormattingContext;
import com.intellij.formatting.FormattingModel;
import com.intellij.formatting.FormattingModelBuilder;
import com.intellij.formatting.FormattingModelProvider;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.language.lni.formatting.block.LniRootBlock;
import org.jetbrains.annotations.NotNull;

final class LniFormattingModelBuilder implements FormattingModelBuilder {

    @Override
    public @NotNull FormattingModel createModel(@NotNull FormattingContext formattingContext) {
        final CodeStyleSettings code = formattingContext.getCodeStyleSettings();

        final LniCodeStyleSettings settings = code.getCustomSettings(LniCodeStyleSettings.class);
        return FormattingModelProvider
                .createFormattingModelForPsiFile(
                        formattingContext.getContainingFile(),
                        new LniRootBlock(formattingContext.getNode(), code, settings),
                        code
                );
    }

}
