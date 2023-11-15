package guru.xgm.jass.lang.folding;

import com.intellij.application.options.editor.CodeFoldingOptionsProvider;
import com.intellij.openapi.options.BeanConfigurable;

public class CodeFoldingOptionsProviderJASS extends BeanConfigurable<CodeFoldingSettingsJASS> implements CodeFoldingOptionsProvider {
    public CodeFoldingOptionsProviderJASS() {
        super(CodeFoldingSettingsJASS.getInstance(), "JASS");
        CodeFoldingSettingsJASS settings = getInstance();
        assert settings != null;
        checkBox("Globals", settings::isGlobals, settings::setGlobals);
        checkBox("Function", settings::isFunction, settings::setFunction);
    }
}
