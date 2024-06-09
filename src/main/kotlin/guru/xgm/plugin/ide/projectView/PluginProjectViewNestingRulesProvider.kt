package guru.xgm.intellij.ide.projectView;

import com.intellij.ide.projectView.ProjectViewNestingRulesProvider;
import guru.xgm.language.angelscript.openapi.fileTypes.AngelScriptFileType;
import org.jetbrains.annotations.NotNull;

public class IntellijProjectViewNestingRulesProvider implements ProjectViewNestingRulesProvider {
    @Override
    public void addFileNestingRules(@NotNull ProjectViewNestingRulesProvider.Consumer consumer) {
        final var as = "." + AngelScriptFileType.EXTENSION;

        consumer.addNestingRule(".j", as);

        for (String e : new String[]{".j", as}) {
            consumer.addNestingRule(e, ".wts");
        }
    }
}
