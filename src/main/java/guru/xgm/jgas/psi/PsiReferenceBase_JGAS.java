package guru.xgm.jgas.psi;

import com.intellij.codeInsight.lookup.LookupElement;
import com.intellij.codeInsight.lookup.LookupElementBuilder;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.TextRange;
import com.intellij.psi.*;
import guru.xgm.jgas.openapi.util.Icons_JGAS;
import guru.xgm.jgas.util.Util_JGAS;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;

public final class PsiReferenceBase_JGAS extends PsiReferenceBase<PsiElement> implements PsiPolyVariantReference {

    private final String key;

    public PsiReferenceBase_JGAS(@NotNull PsiElement element, TextRange textRange) {
        super(element, textRange);
        key = element.getText().substring(textRange.getStartOffset(), textRange.getEndOffset());
    }

    @Override
    public ResolveResult @NotNull [] multiResolve(boolean incompleteCode) {
        Project project = myElement.getProject();
        final List<JGAS_Property> properties = Util_JGAS.findProperties(project, key);
        List<ResolveResult> results = new ArrayList<>();
        for (JGAS_Property property : properties) {
            results.add(new PsiElementResolveResult(property));
        }
        return results.toArray(new ResolveResult[0]);
    }

    @Nullable
    @Override
    public PsiElement resolve() {
        ResolveResult[] resolveResults = multiResolve(false);
        return resolveResults.length == 1 ? resolveResults[0].getElement() : null;
    }

    @Override
    public Object @NotNull [] getVariants() {
        Project project = myElement.getProject();
        List<JGAS_Property> properties = Util_JGAS.findProperties(project);
        List<LookupElement> variants = new ArrayList<>();
        for (final JGAS_Property property : properties) {
            if (property.getKey() != null && !property.getKey().isEmpty()) {
                variants.add(LookupElementBuilder
                        .create(property).withIcon(Icons_JGAS.FILE)
                        .withTypeText(property.getContainingFile().getName())
                );
            }
        }
        return variants.toArray();
    }

}
