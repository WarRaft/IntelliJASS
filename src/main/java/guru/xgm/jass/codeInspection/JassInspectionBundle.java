package guru.xgm.jass.codeInspection;

import com.intellij.DynamicBundle;
import org.jetbrains.annotations.Nls;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.PropertyKey;

public final class JassInspectionBundle extends DynamicBundle {
    private static final JassInspectionBundle ourInstance = new JassInspectionBundle();

    @NonNls
    public static final String BUNDLE = "messages.JassInspectionsBundle";

    private JassInspectionBundle() {
        super(BUNDLE);
    }

    public static @Nls String message(@NotNull @PropertyKey(resourceBundle = BUNDLE) String key,
                                      Object @NotNull ... params) {
        return ourInstance.getMessage(key, params);
    }
}
