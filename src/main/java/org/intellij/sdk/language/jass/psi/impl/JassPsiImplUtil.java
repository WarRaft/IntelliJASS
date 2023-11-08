package org.intellij.sdk.language.jass.psi.impl;

import com.intellij.lang.ASTNode;
import com.intellij.navigation.ItemPresentation;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFile;
import org.intellij.sdk.language.jass.psi.JassElementFactory;
import org.intellij.sdk.language.jass.psi.JassProperty;
import org.intellij.sdk.language.jass.psi.JassTypes;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;

public class JassPsiImplUtil {

    public static String getKey(JassProperty element) {
        ASTNode keyNode = element.getNode().findChildByType(JassTypes.KEY);
        if (keyNode != null) {
            // IMPORTANT: Convert embedded escaped spaces to simple spaces
            return keyNode.getText().replaceAll("\\\\ ", " ");
        } else {
            return null;
        }
    }

    public static String getValue(JassProperty element) {
        ASTNode valueNode = element.getNode().findChildByType(JassTypes.VALUE);
        if (valueNode != null) {
            return valueNode.getText();
        } else {
            return null;
        }
    }

    public static String getName(JassProperty element) {
        return getKey(element);
    }

    public static PsiElement setName(JassProperty element, String newName) {
        ASTNode keyNode = element.getNode().findChildByType(JassTypes.KEY);
        if (keyNode != null) {
            JassProperty property = JassElementFactory.createProperty(element.getProject(), newName);
            ASTNode newKeyNode = property.getFirstChild().getNode();
            element.getNode().replaceChild(keyNode, newKeyNode);
        }
        return element;
    }

    public static PsiElement getNameIdentifier(JassProperty element) {
        ASTNode keyNode = element.getNode().findChildByType(JassTypes.KEY);
        if (keyNode != null) {
            return keyNode.getPsi();
        } else {
            return null;
        }
    }

    public static ItemPresentation getPresentation(final JassProperty element) {
        return new ItemPresentation() {
            @Nullable
            @Override
            public String getPresentableText() {
                return element.getKey();
            }

            @Nullable
            @Override
            public String getLocationString() {
                PsiFile containingFile = element.getContainingFile();
                return containingFile == null ? null : containingFile.getName();
            }

            @Override
            public Icon getIcon(boolean unused) {
                return element.getIcon(0);
            }
        };
    }

}
