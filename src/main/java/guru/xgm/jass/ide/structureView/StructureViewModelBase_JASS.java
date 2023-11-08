package guru.xgm.jass.ide.structureView;

import com.intellij.ide.structureView.StructureViewModel;
import com.intellij.ide.structureView.StructureViewModelBase;
import com.intellij.ide.structureView.StructureViewTreeElement;
import com.intellij.ide.util.treeView.smartTree.Sorter;
import com.intellij.openapi.editor.Editor;
import com.intellij.psi.PsiFile;
import org.intellij.sdk.language.jass.psi.JassProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class StructureViewModelBase_JASS extends StructureViewModelBase implements
    StructureViewModel.ElementInfoProvider {

  public StructureViewModelBase_JASS(@Nullable Editor editor, PsiFile psiFile) {
    super(psiFile, editor, new StructureViewTreeElement_JASS(psiFile));
  }

  @NotNull
  public Sorter @NotNull [] getSorters() {
    return new Sorter[]{Sorter.ALPHA_SORTER};
  }


  @Override
  public boolean isAlwaysShowsPlus(StructureViewTreeElement element) {
    return false;
  }

  @Override
  public boolean isAlwaysLeaf(StructureViewTreeElement element) {
    return element.getValue() instanceof JassProperty;
  }

  @Override
  protected Class<?> @NotNull [] getSuitableClasses() {
    return new Class[]{JassProperty.class};
  }

}
