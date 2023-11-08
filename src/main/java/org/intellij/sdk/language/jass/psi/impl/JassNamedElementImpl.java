package org.intellij.sdk.language.jass.psi.impl;

import com.intellij.extapi.psi.ASTWrapperPsiElement;
import com.intellij.lang.ASTNode;
import org.intellij.sdk.language.jass.psi.JassNamedElement;
import org.jetbrains.annotations.NotNull;

public abstract class JassNamedElementImpl extends ASTWrapperPsiElement implements JassNamedElement {

    public JassNamedElementImpl(@NotNull ASTNode node) {
        super(node);
    }

}
