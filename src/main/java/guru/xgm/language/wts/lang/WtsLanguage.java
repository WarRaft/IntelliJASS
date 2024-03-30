package guru.xgm.language.wts.lang;

import com.intellij.lang.Language;

public class WtsLanguage extends Language {
    public static final WtsLanguage INSTANCE = new WtsLanguage();

    private WtsLanguage() {
        super("WTS");
    }
}
