package guru.xgm.language.angelscript.lang.folding;

import com.intellij.application.options.editor.CodeFoldingOptionsProvider;
import com.intellij.openapi.options.BeanConfigurable;

public class AngelScriptCodeFoldingOptionsProvider extends BeanConfigurable<AngelScriptCodeFoldingSettings> implements CodeFoldingOptionsProvider {
    public AngelScriptCodeFoldingOptionsProvider() {
        super(AngelScriptCodeFoldingSettings.getInstance(), "AngelScript");
        final var settings = getInstance();
        assert settings != null;
        checkBox("Enum", settings::isFoldEnum, settings::setFoldEnum);
    }
}
