package guru.xgm.language.jass.lang.folding;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.SettingsCategory;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.util.xmlb.XmlSerializerUtil;
import org.jetbrains.annotations.NotNull;

@State(name = "CodeFoldingSettingsJASS", storages = @Storage("editor.xml"), category = SettingsCategory.CODE)
public class JassCodeFoldingSettings implements PersistentStateComponent<JassCodeFoldingSettings> {
    private boolean foldGlobals = false;
    private boolean foldFunction = false;
    private boolean foldIf = false;
    private boolean foldLoop = false;

    public static JassCodeFoldingSettings getInstance() {
        return ApplicationManager.getApplication().getService(JassCodeFoldingSettings.class);
    }

    @Override
    public JassCodeFoldingSettings getState() {
        return this;
    }

    @Override
    public void loadState(@NotNull final JassCodeFoldingSettings state) {
        XmlSerializerUtil.copyBean(state, this);
    }

    public boolean isFoldGlobals() {
        return foldGlobals;
    }

    public void setFoldGlobals(boolean foldGlobals) {
        this.foldGlobals = foldGlobals;
    }

    public boolean isFoldFunction() {
        return foldFunction;
    }

    public void setFoldFunction(boolean foldFunction) {
        this.foldFunction = foldFunction;
    }

    public boolean isFoldIf() {
        return foldIf;
    }

    public void setFoldIf(boolean foldIf) {
        this.foldIf = foldIf;
    }

    public boolean isFoldLoop() {
        return foldLoop;
    }

    public void setFoldLoop(boolean foldLoop) {
        this.foldLoop = foldLoop;
    }
}
