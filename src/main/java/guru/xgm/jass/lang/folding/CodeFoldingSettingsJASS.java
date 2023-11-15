package guru.xgm.jass.lang.folding;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.SettingsCategory;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.util.xmlb.XmlSerializerUtil;
import org.jetbrains.annotations.NotNull;

@State(name = "CodeFoldingSettingsJASS", storages = @Storage("editor.xml"), category = SettingsCategory.CODE)
public class CodeFoldingSettingsJASS implements PersistentStateComponent<CodeFoldingSettingsJASS> {
    private boolean _globals = false;
    private boolean _function = false;

    public static CodeFoldingSettingsJASS getInstance() {
        return ApplicationManager.getApplication().getService(CodeFoldingSettingsJASS.class);
    }

    @Override
    public CodeFoldingSettingsJASS getState() {
        return this;
    }

    @Override
    public void loadState(@NotNull final CodeFoldingSettingsJASS state) {
        XmlSerializerUtil.copyBean(state, this);
    }

    public boolean isGlobals() {
        return _globals;
    }

    public void setGlobals(final boolean value) {
        _globals = value;
    }

    public boolean isFunction() {
        return _function;
    }

    public void setFunction(final boolean value) {
        _function = value;
    }
}
