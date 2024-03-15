package guru.xgm.language.zinc.formatting;

import com.intellij.formatting.FormattingContext;
import com.intellij.formatting.FormattingModel;
import com.intellij.formatting.FormattingModelBuilder;
import com.intellij.formatting.FormattingModelProvider;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.language.zinc.formatting.block.ZincRootBlock;
import org.jetbrains.annotations.NotNull;

final class ZincFormattingModelBuilder implements FormattingModelBuilder {

    @Override
    public @NotNull FormattingModel createModel(@NotNull FormattingContext formattingContext) {
        final CodeStyleSettings code = formattingContext.getCodeStyleSettings();

        final ZincCodeStyleSettings zinc = code.getCustomSettings(ZincCodeStyleSettings.class);
        return FormattingModelProvider
                .createFormattingModelForPsiFile(
                        formattingContext.getContainingFile(),
                        new ZincRootBlock(formattingContext.getNode(), code, zinc),
                        code
                );
    }

}
