package guru.xgm.language.angelscript.lang.folding;

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
@State(name = "AngelScriptCodeFoldingSettings", storages = @Storage("editor.xml"), category = SettingsCategory.CODE)
public class AngelScriptCodeFoldingSettings implements PersistentStateComponent<AngelScriptCodeFoldingSettings> {
    private boolean foldEnum = false;

    public static AngelScriptCodeFoldingSettings getInstance() {
        return ApplicationManager.getApplication().getService(AngelScriptCodeFoldingSettings.class);
    }

    @Override
    public AngelScriptCodeFoldingSettings getState() {
        return this;
    }

    @Override
    public void loadState(@NotNull final AngelScriptCodeFoldingSettings state) {
        XmlSerializerUtil.copyBean(state, this);
    }

}
