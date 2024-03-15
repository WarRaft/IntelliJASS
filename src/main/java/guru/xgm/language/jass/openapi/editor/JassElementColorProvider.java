package guru.xgm.language.jass.openapi.editor;

import com.intellij.openapi.editor.ElementColorProvider;
import com.intellij.psi.PsiElement;
import com.intellij.ui.JBColor;
import guru.xgm.language.jass.psi.JassTypes;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;

public class JassElementColorProvider implements ElementColorProvider {
    @Override
    public @Nullable Color getColorFrom(@NotNull PsiElement psiElement) {
        final var type = psiElement.getNode().getElementType();

        if (type == JassTypes.HEXVAL) {
            return JBColor.GREEN;
        }

        return null;
    }

    @Override
    public void setColorTo(@NotNull PsiElement psiElement, @NotNull Color color) {
        System.out.print(psiElement + " = " + color + "\n");
        final var type = psiElement.getNode().getElementType();

        // AARRGGBB
        // Integer.toHexString(your_color.getRGB())
    }

    /*
    VertexColor / VertexColour содержащие.
    BlzConertColor / ConvertColour.
    */
}
