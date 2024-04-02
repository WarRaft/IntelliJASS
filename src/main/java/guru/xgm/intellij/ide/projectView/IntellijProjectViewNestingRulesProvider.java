package guru.xgm.intellij.ide.projectView;

import com.intellij.ide.projectView.ProjectViewNestingRulesProvider;
import org.jetbrains.annotations.NotNull;

public class IntellijProjectViewNestingRulesProvider implements ProjectViewNestingRulesProvider {
    @Override
    public void addFileNestingRules(@NotNull ProjectViewNestingRulesProvider.Consumer consumer) {
        consumer.addNestingRule(".j", ".ass");
        consumer.addNestingRule(".j", ".as");

        for (String e : new String[]{".j", ".as", ".ass"}) {
            consumer.addNestingRule(e, ".wts");
        }
    }
}
