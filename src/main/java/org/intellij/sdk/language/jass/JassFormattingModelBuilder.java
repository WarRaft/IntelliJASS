package org.intellij.sdk.language.jass;

import com.intellij.formatting.*;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import guru.xgm.jass.lang.Language_JASS;
import org.intellij.sdk.language.jass.psi.JassTypes;
import org.jetbrains.annotations.NotNull;

final class JassFormattingModelBuilder implements FormattingModelBuilder {

    private static SpacingBuilder createSpaceBuilder(CodeStyleSettings settings) {
        return new SpacingBuilder(settings, Language_JASS.INSTANCE)
                .around(JassTypes.SEPARATOR)
                .spaceIf(settings.getCommonSettings(Language_JASS.INSTANCE.getID()).SPACE_AROUND_ASSIGNMENT_OPERATORS)
                .before(JassTypes.PROPERTY)
                .none();
    }

    @Override
    public @NotNull FormattingModel createModel(@NotNull FormattingContext formattingContext) {
        final CodeStyleSettings codeStyleSettings = formattingContext.getCodeStyleSettings();
        return FormattingModelProvider
                .createFormattingModelForPsiFile(formattingContext.getContainingFile(),
                        new JassBlock(formattingContext.getNode(),
                                Wrap.createWrap(WrapType.NONE, false),
                                Alignment.createAlignment(),
                                createSpaceBuilder(codeStyleSettings)),
                        codeStyleSettings);
    }

}
