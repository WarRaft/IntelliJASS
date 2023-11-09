package guru.xgm.jass.lang;

import com.intellij.lang.Language;

public class LanguageJASS extends Language {
    public static final LanguageJASS INSTANCE = new LanguageJASS();

    private LanguageJASS() {
        super("JASS");
    }
}
