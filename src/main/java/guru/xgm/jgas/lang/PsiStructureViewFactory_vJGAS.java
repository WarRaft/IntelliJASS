package guru.xgm.jgas.lang;

import com.intellij.ide.structureView.StructureViewBuilder;
import com.intellij.ide.structureView.StructureViewModel;
import com.intellij.ide.structureView.TreeBasedStructureViewBuilder;
import com.intellij.lang.PsiStructureViewFactory;
import com.intellij.openapi.editor.Editor;
import com.intellij.psi.PsiFile;
import guru.xgm.jgas.ide.structureView.StructureViewModelBase_JGAS;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

final class PsiStructureViewFactory_vJGAS implements PsiStructureViewFactory {
    @Override
    public @NotNull StructureViewBuilder getStructureViewBuilder(@NotNull final PsiFile psiFile) {
        return new TreeBasedStructureViewBuilder() {
            @NotNull
            @Override
            public StructureViewModel createStructureViewModel(@Nullable Editor editor) {
                return new StructureViewModelBase_JGAS(editor, psiFile);
            }
        };
    }

}
