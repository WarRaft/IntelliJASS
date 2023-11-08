package guru.xgm.jgas.navigation;

import com.intellij.navigation.ChooseByNameContributorEx;
import com.intellij.navigation.NavigationItem;
import com.intellij.openapi.project.Project;
import com.intellij.psi.search.GlobalSearchScope;
import com.intellij.util.Processor;
import com.intellij.util.containers.ContainerUtil;
import com.intellij.util.indexing.FindSymbolParameters;
import com.intellij.util.indexing.IdFilter;
import guru.xgm.jgas.util.Util_JGAS;
import guru.xgm.jgas.psi.JGAS_Property;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;
import java.util.Objects;

final class ChooseByNameContributorEx_vJGAS implements ChooseByNameContributorEx {
    @Override
    public void processNames(@NotNull Processor<? super String> processor,
                             @NotNull GlobalSearchScope scope,
                             @Nullable IdFilter filter) {
        Project project = Objects.requireNonNull(scope.getProject());
        List<String> propertyKeys = ContainerUtil.map(
                Util_JGAS.findProperties(project), JGAS_Property::getKey);
        ContainerUtil.process(propertyKeys, processor);
    }

    @Override
    public void processElementsWithName(@NotNull String name,
                                        @NotNull Processor<? super NavigationItem> processor,
                                        @NotNull FindSymbolParameters parameters) {
        List<NavigationItem> properties = ContainerUtil.map(
                Util_JGAS.findProperties(parameters.getProject(), name),
                property -> (NavigationItem) property);
        ContainerUtil.process(properties, processor);
    }
}
