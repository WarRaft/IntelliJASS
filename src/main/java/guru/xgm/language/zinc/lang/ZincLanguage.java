package guru.xgm.language.zinc.lang;

import com.intellij.lang.Language;

public class ZincLanguage extends Language {
    public static final ZincLanguage INSTANCE = new ZincLanguage();

    private ZincLanguage() {
        super("ZINC");
    }
}
