package guru.xgm.language.lni.lang.folding;

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
@State(name = "LniCodeFoldingSettings", storages = @Storage("editor.xml"), category = SettingsCategory.CODE)
public class LniCodeFoldingSettings implements PersistentStateComponent<LniCodeFoldingSettings> {
    private boolean foldItems = false;

    public static LniCodeFoldingSettings getInstance() {
        return ApplicationManager.getApplication().getService(LniCodeFoldingSettings.class);
    }

    @Override
    public LniCodeFoldingSettings getState() {
        return this;
    }

    @Override
    public void loadState(@NotNull final LniCodeFoldingSettings state) {
        XmlSerializerUtil.copyBean(state, this);
    }

}
