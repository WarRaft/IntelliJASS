package guru.xgm.language.vjass.lang;

import com.intellij.lang.Language;

public class VjassLanguage extends Language {
    public static final VjassLanguage INSTANCE = new VjassLanguage();

    private VjassLanguage() {
        super("VJASS");
    }
}
