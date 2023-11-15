package guru.xgm.jass.formatting;

import com.intellij.formatting.*;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.jass.lang.LanguageJASS;
import guru.xgm.jass.psi.TypesJASS;
import guru.xgm.jass.psi.formatter.common.AbstractBlockJASS;
import org.jetbrains.annotations.NotNull;

final class FormattingModelBuilderJASS implements FormattingModelBuilder {

    private static SpacingBuilder createSpaceBuilder(CodeStyleSettings settings) {
        return new SpacingBuilder(settings, LanguageJASS.INSTANCE)
                .around(TypesJASS.CONSTANT)
                .spaceIf(settings.getCommonSettings(LanguageJASS.INSTANCE.getID()).SPACE_AROUND_ASSIGNMENT_OPERATORS)
                .before(TypesJASS.NATIVE)
                .none();
    }

    @Override
    public @NotNull FormattingModel createModel(@NotNull FormattingContext formattingContext) {
        final CodeStyleSettings codeStyleSettings = formattingContext.getCodeStyleSettings();
        return FormattingModelProvider
                .createFormattingModelForPsiFile(
                        formattingContext.getContainingFile(),
                        new AbstractBlockJASS(
                                formattingContext.getNode(),
                                Wrap.createWrap(WrapType.NONE, false),
                                Alignment.createAlignment(),
                                createSpaceBuilder(codeStyleSettings)
                        ),
                        codeStyleSettings
                );
    }

}
