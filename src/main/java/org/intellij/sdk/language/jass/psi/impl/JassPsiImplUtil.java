package org.intellij.sdk.language.jass.psi.impl;

import com.intellij.lang.ASTNode;
import org.intellij.sdk.language.jass.psi.JassProperty;
import org.intellij.sdk.language.jass.psi.JassTypes;

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

}
