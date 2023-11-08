package guru.xgm.jass.lang;

import com.intellij.lang.Language;

public class Language_JASS extends Language {
    public static final Language_JASS INSTANCE = new Language_JASS();

    private Language_JASS() {
        super("JASS");
    }
}
