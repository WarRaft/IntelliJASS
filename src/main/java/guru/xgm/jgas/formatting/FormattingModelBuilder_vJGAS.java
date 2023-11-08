package guru.xgm.jgas.formatting;

import com.intellij.formatting.*;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.jgas.lang.Language_JGAS;
import guru.xgm.jgas.psi.formatter.common.AbstractBlock_JGAS;
import guru.xgm.jgas.psi.Types_JGAS;
import org.jetbrains.annotations.NotNull;

final class FormattingModelBuilder_vJGAS implements FormattingModelBuilder {

    private static SpacingBuilder createSpaceBuilder(CodeStyleSettings settings) {
        return new SpacingBuilder(settings, Language_JGAS.INSTANCE)
                .around(Types_JGAS.SEPARATOR)
                .spaceIf(settings.getCommonSettings(Language_JGAS.INSTANCE.getID()).SPACE_AROUND_ASSIGNMENT_OPERATORS)
                .before(Types_JGAS.PROPERTY)
                .none();
    }

    @Override
    public @NotNull FormattingModel createModel(@NotNull FormattingContext formattingContext) {
        final CodeStyleSettings codeStyleSettings = formattingContext.getCodeStyleSettings();
        return FormattingModelProvider
                .createFormattingModelForPsiFile(formattingContext.getContainingFile(),
                        new AbstractBlock_JGAS(formattingContext.getNode(),
                                Wrap.createWrap(WrapType.NONE, false),
                                Alignment.createAlignment(),
                                createSpaceBuilder(codeStyleSettings)),
                        codeStyleSettings);
    }

}
