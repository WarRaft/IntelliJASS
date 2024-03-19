package guru.xgm.language.lni.lang.folding;

import com.intellij.application.options.editor.CodeFoldingOptionsProvider;
import com.intellij.openapi.options.BeanConfigurable;

public class LniCodeFoldingOptionsProvider extends BeanConfigurable<LniCodeFoldingSettings> implements CodeFoldingOptionsProvider {
    public LniCodeFoldingOptionsProvider() {
        super(LniCodeFoldingSettings.getInstance(), "LNI");
        LniCodeFoldingSettings settings = getInstance();
        assert settings != null;
        checkBox("Item", settings::isFoldItems, settings::setFoldItems);
    }
}
