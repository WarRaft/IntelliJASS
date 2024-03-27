package guru.xgm.language.angelscript.codeInsight.template;

import com.intellij.codeInsight.template.TemplateActionContext;
import com.intellij.codeInsight.template.TemplateContextType;
import guru.xgm.language.angelscript.lang.AngelScriptLanguage;
import org.jetbrains.annotations.NotNull;

public class AngelScriptTemplateContextType extends TemplateContextType {
    protected AngelScriptTemplateContextType() {
        super("AngelScript");
    }

    @Override
    public boolean isInContext(@NotNull TemplateActionContext templateActionContext) {
        return (templateActionContext.getFile().getLanguage() instanceof AngelScriptLanguage);
    }
}
