package guru.xgm.jass.lang;

import com.intellij.ide.structureView.StructureViewBuilder;
import com.intellij.ide.structureView.StructureViewModel;
import com.intellij.ide.structureView.TreeBasedStructureViewBuilder;
import com.intellij.lang.PsiStructureViewFactory;
import com.intellij.openapi.editor.Editor;
import com.intellij.psi.PsiFile;
import guru.xgm.jass.ide.structureView.StructureViewModelBase_JASS;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

final class PsiStructureViewFactory_JASS implements PsiStructureViewFactory {
    @Override
    public @NotNull StructureViewBuilder getStructureViewBuilder(@NotNull final PsiFile psiFile) {
        return new TreeBasedStructureViewBuilder() {
            @NotNull
            @Override
            public StructureViewModel createStructureViewModel(@Nullable Editor editor) {
                return new StructureViewModelBase_JASS(editor, psiFile);
            }
        };
    }

}
