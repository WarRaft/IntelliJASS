package guru.xgm.language.jass.formatting.block;

import com.intellij.formatting.Alignment;
import guru.xgm.language.jass.formatting.JassCodeStyleSettings;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.HashMap;

import static guru.xgm.language.jass.formatting.JassCodeStyleSettings.Fields.*;

public class JassNativeBlockAligner {
    JassNativeBlockAligner(JassCodeStyleSettings jass) {
        this.jass = jass;
        if (jass.AT_NATIVE_DECL_NATIVE) map.put(AT_NATIVE_DECL_NATIVE, Alignment.createAlignment(true));
        if (jass.AT_NATIVE_DECL_NAME || jass.AT_NATIVE_DECL_NAME_RIGHT) map.put(AT_NATIVE_DECL_NAME, Alignment.createAlignment(true, jass.AT_NATIVE_DECL_NAME_RIGHT ? Alignment.Anchor.RIGHT : Alignment.Anchor.LEFT));
        if (jass.AT_NATIVE_DECL_TAKES) map.put(AT_NATIVE_DECL_TAKES, Alignment.createAlignment(true));
        if (jass.AT_NATIVE_DECL_RETURNS) map.put(AT_NATIVE_DECL_RETURNS, Alignment.createAlignment(true));
    }

    private final HashMap<String, Alignment> map = new HashMap<>();
    private final ArrayList<Alignment> list = new ArrayList<>();

    private final JassCodeStyleSettings jass;

    @Nullable Alignment named(String name) {
        return map.get(name);
    }

    @Nullable Alignment argument(int index) {
        if (!jass.AT_NATIVE_DECL_ARGUMENT) return null;
        while (list.size() <= index) {
            list.add(Alignment.createAlignment(true));
        }
        return list.get(index);
    }

}
