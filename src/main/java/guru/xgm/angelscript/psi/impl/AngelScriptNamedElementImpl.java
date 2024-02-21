package guru.xgm.angelscript.psi.impl;

import com.intellij.extapi.psi.ASTWrapperPsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.angelscript.psi.AngelScriptNamedElement;
import org.jetbrains.annotations.NotNull;

public abstract class AngelScriptNamedElementImpl extends ASTWrapperPsiElement implements AngelScriptNamedElement {

    public AngelScriptNamedElementImpl(@NotNull ASTNode node) {
        super(node);
    }
}
