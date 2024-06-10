package guru.xgm.language.angelscript.formatting;

import com.intellij.formatting.FormattingContext;
import com.intellij.formatting.FormattingModel;
import com.intellij.formatting.FormattingModelBuilder;
import com.intellij.formatting.FormattingModelProvider;
import guru.xgm.language.angelscript.formatting.block.AngelScriptBlock;
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings;
import org.jetbrains.annotations.NotNull;

final class AngelScriptFormattingModelBuilder implements FormattingModelBuilder {

    @Override
    public @NotNull FormattingModel createModel(@NotNull FormattingContext formattingContext) {
        final var settings = new AngelScriptBlockSettings(formattingContext);

        return FormattingModelProvider
                .createFormattingModelForPsiFile(
                        formattingContext.getContainingFile(),
                        new AngelScriptBlock(formattingContext.getNode(), null, null, settings),
                        settings.code
                );
    }

}
