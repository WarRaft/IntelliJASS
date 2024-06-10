package guru.xgm.language.jass.lang.folding;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.SettingsCategory;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.util.xmlb.XmlSerializerUtil;
import lombok.Getter;
import lombok.Setter;
import org.jetbrains.annotations.NotNull;

@Setter
@Getter
@State(name = "JassCodeFoldingSettings", storages = @Storage("editor.xml"), category = SettingsCategory.CODE)
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

}
