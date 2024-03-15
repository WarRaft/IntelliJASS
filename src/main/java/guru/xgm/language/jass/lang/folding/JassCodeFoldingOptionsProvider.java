package guru.xgm.language.jass.lang.folding;

import com.intellij.application.options.editor.CodeFoldingOptionsProvider;
import com.intellij.openapi.options.BeanConfigurable;

public class JassCodeFoldingOptionsProvider extends BeanConfigurable<JassCodeFoldingSettings> implements CodeFoldingOptionsProvider {
    public JassCodeFoldingOptionsProvider() {
        super(JassCodeFoldingSettings.getInstance(), "JASS");
        JassCodeFoldingSettings settings = getInstance();
        assert settings != null;
        checkBox("Globals", settings::isFoldGlobals, settings::setFoldGlobals);
        checkBox("Function", settings::isFoldFunction, settings::setFoldFunction);
        checkBox("If", settings::isFoldIf, settings::setFoldIf);
        checkBox("Loop", settings::isFoldLoop, settings::setFoldLoop);
    }
}
