package guru.xgm.jgas.codeInsight.daemon;

import com.intellij.codeInsight.daemon.RelatedItemLineMarkerInfo;
import com.intellij.codeInsight.daemon.RelatedItemLineMarkerProvider;
import com.intellij.codeInsight.navigation.NavigationGutterIconBuilder;
import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiLiteralExpression;
import com.intellij.psi.impl.source.tree.java.PsiJavaTokenImpl;
import guru.xgm.jgas.lang.annotation.Annotator_JGAS;
import guru.xgm.jgas.openapi.util.Icons_JGAS;
import guru.xgm.jgas.util.Util_JGAS;
import guru.xgm.jgas.psi.JGAS_Property;
import org.jetbrains.annotations.NotNull;

import java.util.Collection;
import java.util.List;

final class RelatedItemLineMarkerProvider_JGAS extends RelatedItemLineMarkerProvider {
    @Override
    protected void collectNavigationMarkers(@NotNull PsiElement element,
                                            @NotNull Collection<? super RelatedItemLineMarkerInfo<?>> result) {
        // This must be an element with a literal expression as a parent
        if (!(element instanceof PsiJavaTokenImpl) || !(element.getParent() instanceof PsiLiteralExpression literalExpression)) {
            return;
        }

        // The literal expression must start with the Jass language literal expression
        String value = literalExpression.getValue() instanceof String ? (String) literalExpression.getValue() : null;
        if ((value == null) || !value.startsWith(Annotator_JGAS.SIMPLE_PREFIX_STR + Annotator_JGAS.SIMPLE_SEPARATOR_STR)) {
            return;
        }

        // Get the Jass language property usage
        Project project = element.getProject();
        String possibleProperties = value.substring(
                Annotator_JGAS.SIMPLE_PREFIX_STR.length() + Annotator_JGAS.SIMPLE_SEPARATOR_STR.length()
        );
        final List<JGAS_Property> properties = Util_JGAS.findProperties(project, possibleProperties);
        if (!properties.isEmpty()) {
            // Add the property to a collection of line marker info
            NavigationGutterIconBuilder<PsiElement> builder =
                    NavigationGutterIconBuilder.create(Icons_JGAS.FILE)
                            .setTargets(properties)
                            .setTooltipText("Navigate to Jass language property");
            result.add(builder.createLineMarkerInfo(element));
        }
    }

}
