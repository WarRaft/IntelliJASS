package guru.xgm.jass.lang.folding;

import com.intellij.application.options.editor.CodeFoldingOptionsProvider;
import com.intellij.openapi.options.BeanConfigurable;

public class CodeFoldingOptionsProviderJASS extends BeanConfigurable<CodeFoldingSettingsJASS> implements CodeFoldingOptionsProvider {
    public CodeFoldingOptionsProviderJASS() {
        super(CodeFoldingSettingsJASS.getInstance(), "JASS");
        CodeFoldingSettingsJASS settings = getInstance();
        assert settings != null;
        checkBox("Globals", settings::isFoldGlobals, settings::setFoldGlobals);
        checkBox("Function", settings::isFoldFunction, settings::setFoldFunction);
        checkBox("If", settings::isFoldIf, settings::setFoldIf);
        checkBox("Loop", settings::isFoldLoop, settings::setFoldLoop);
    }
}
