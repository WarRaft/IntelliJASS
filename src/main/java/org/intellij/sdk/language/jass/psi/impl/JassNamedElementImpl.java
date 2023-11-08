package org.intellij.sdk.language.jass.psi.impl;

import com.intellij.extapi.psi.ASTWrapperPsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jass.psi.PsiNameIdentifierOwner_JASS;
import org.jetbrains.annotations.NotNull;

public abstract class JassNamedElementImpl extends ASTWrapperPsiElement implements PsiNameIdentifierOwner_JASS {

    public JassNamedElementImpl(@NotNull ASTNode node) {
        super(node);
    }

}
