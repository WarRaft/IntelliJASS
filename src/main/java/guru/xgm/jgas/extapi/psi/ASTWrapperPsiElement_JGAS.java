package guru.xgm.jgas.extapi.psi;

import com.intellij.extapi.psi.ASTWrapperPsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jgas.psi.PsiNameIdentifierOwner_JGAS;
import org.jetbrains.annotations.NotNull;

public abstract class ASTWrapperPsiElement_JGAS extends ASTWrapperPsiElement implements PsiNameIdentifierOwner_JGAS {

    public ASTWrapperPsiElement_JGAS(@NotNull ASTNode node) {
        super(node);
    }
}
