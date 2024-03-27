package guru.xgm.language.angelscript.codeInspection;

import com.intellij.DynamicBundle;
import org.jetbrains.annotations.Nls;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.PropertyKey;

public final class AngelScriptInspectionBundle extends DynamicBundle {
    private static final AngelScriptInspectionBundle ourInstance = new AngelScriptInspectionBundle();

    @NonNls
    public static final String BUNDLE = "messages.AngelScriptInspectionsBundle";

    private AngelScriptInspectionBundle() {
        super(BUNDLE);
    }

    public static @Nls String message(@NotNull @PropertyKey(resourceBundle = BUNDLE) String key,
                                      Object @NotNull ... params) {
        return ourInstance.getMessage(key, params);
    }
}
