package guru.xgm.language.jass.lang;

import com.intellij.lang.Language;

public class JassLanguage extends Language {
    public static final JassLanguage INSTANCE = new JassLanguage();

    private JassLanguage() {
        super("JASS");
    }
}
