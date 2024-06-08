package guru.xgm.language.lni.lang;

import com.intellij.lang.Language;

public class LniLanguage extends Language {
    public static final LniLanguage INSTANCE = new LniLanguage();

    private LniLanguage() {
        super("LNI");
    }
}
