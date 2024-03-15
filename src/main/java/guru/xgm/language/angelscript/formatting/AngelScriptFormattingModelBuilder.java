package guru.xgm.language.angelscript.formatting;

import com.intellij.formatting.FormattingContext;
import com.intellij.formatting.FormattingModel;
import com.intellij.formatting.FormattingModelBuilder;
import com.intellij.formatting.FormattingModelProvider;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.language.angelscript.formatting.block.AngelScriptRootBlock;
import org.jetbrains.annotations.NotNull;

final class AngelScriptFormattingModelBuilder implements FormattingModelBuilder {

    @Override
    public @NotNull FormattingModel createModel(@NotNull FormattingContext formattingContext) {
        final CodeStyleSettings code = formattingContext.getCodeStyleSettings();

        final AngelScriptCodeStyleSettings settings = code.getCustomSettings(AngelScriptCodeStyleSettings.class);
        return FormattingModelProvider
                .createFormattingModelForPsiFile(
                        formattingContext.getContainingFile(),
                        new AngelScriptRootBlock(formattingContext.getNode(), code, settings),
                        code
                );
    }

}
