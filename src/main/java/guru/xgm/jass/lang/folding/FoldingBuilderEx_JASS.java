package guru.xgm.jass.lang.folding;

import com.intellij.lang.ASTNode;
import com.intellij.lang.folding.FoldingBuilderEx;
import com.intellij.lang.folding.FoldingDescriptor;
import com.intellij.openapi.editor.Document;
import com.intellij.openapi.editor.FoldingGroup;
import com.intellij.openapi.project.DumbAware;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.TextRange;
import com.intellij.openapi.util.text.StringUtil;
import com.intellij.psi.JavaRecursiveElementWalkingVisitor;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiLiteralExpression;
import com.intellij.psi.util.PsiLiteralUtil;
import com.intellij.util.containers.ContainerUtil;
import guru.xgm.jass.lang.annotation.Annotator_JASS;
import guru.xgm.jass.Util_JASS;
import guru.xgm.jass.psi.JASS_Property;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class FoldingBuilderEx_JASS extends FoldingBuilderEx implements DumbAware {

  @Override
  public FoldingDescriptor @NotNull [] buildFoldRegions(@NotNull PsiElement root, @NotNull Document document, boolean quick) {
    // Initialize the group of folding regions that will expand/collapse together.
    FoldingGroup group = FoldingGroup.newGroup(Annotator_JASS.SIMPLE_PREFIX_STR);
    // Initialize the list of folding regions
    List<FoldingDescriptor> descriptors = new ArrayList<>();

    root.accept(new JavaRecursiveElementWalkingVisitor() {

      @Override
      public void visitLiteralExpression(@NotNull PsiLiteralExpression literalExpression) {
        super.visitLiteralExpression(literalExpression);

        String value = PsiLiteralUtil.getStringLiteralContent(literalExpression);
        if (value != null && value.startsWith(Annotator_JASS.SIMPLE_PREFIX_STR + Annotator_JASS.SIMPLE_SEPARATOR_STR)) {
          Project project = literalExpression.getProject();
          String key = value.substring(
              Annotator_JASS.SIMPLE_PREFIX_STR.length() + Annotator_JASS.SIMPLE_SEPARATOR_STR.length()
          );
          // find JassProperty for the given key in the project
          JASS_Property simpleProperty = ContainerUtil.getOnlyItem(Util_JASS.findProperties(project, key));
          if (simpleProperty != null) {
            // Add a folding descriptor for the literal expression at this node.
            descriptors.add(new FoldingDescriptor(literalExpression.getNode(),
                new TextRange(literalExpression.getTextRange().getStartOffset() + 1,
                    literalExpression.getTextRange().getEndOffset() - 1),
                group, Collections.singleton(simpleProperty)));
          }
        }
      }
    });

    return descriptors.toArray(FoldingDescriptor.EMPTY);
  }

  /**
   * Gets the Jass Language 'value' string corresponding to the 'key'
   *
   * @param node Node corresponding to PsiLiteralExpression containing a string in the format
   *             SIMPLE_PREFIX_STR + SIMPLE_SEPARATOR_STR + Key, where Key is
   *             defined by the Jass language file.
   */
  @Nullable
  @Override
  public String getPlaceholderText(@NotNull ASTNode node) {
    if (node.getPsi() instanceof PsiLiteralExpression psiLiteralExpression) {
      String text = PsiLiteralUtil.getStringLiteralContent(psiLiteralExpression);
      if (text == null) {
        return null;
      }

      String key = text.substring(Annotator_JASS.SIMPLE_PREFIX_STR.length() +
          Annotator_JASS.SIMPLE_SEPARATOR_STR.length());

      JASS_Property simpleProperty = ContainerUtil.getOnlyItem(
          Util_JASS.findProperties(psiLiteralExpression.getProject(), key)
      );
      if (simpleProperty == null) {
        return StringUtil.THREE_DOTS;
      }

      String propertyValue = simpleProperty.getValue();
      // IMPORTANT: keys can come with no values, so a test for null is needed
      // IMPORTANT: Convert embedded \n to backslash n, so that the string will look
      // like it has LF embedded in it and embedded " to escaped "
      if (propertyValue == null) {
        return StringUtil.THREE_DOTS;
      }

      return propertyValue.replaceAll("\n", "\\n").replaceAll("\"", "\\\\\"");
    }

    return null;
  }

  @Override
  public boolean isCollapsedByDefault(@NotNull ASTNode node) {
    return true;
  }

}
