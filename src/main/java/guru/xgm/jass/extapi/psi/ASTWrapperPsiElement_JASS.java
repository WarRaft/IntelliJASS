package guru.xgm.jass.extapi.psi;

import com.intellij.extapi.psi.ASTWrapperPsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jass.psi.PsiNameIdentifierOwner_JASS;
import org.jetbrains.annotations.NotNull;

public abstract class ASTWrapperPsiElement_JASS extends ASTWrapperPsiElement implements PsiNameIdentifierOwner_JASS {

    public ASTWrapperPsiElement_JASS(@NotNull ASTNode node) {
        super(node);
    }
}
