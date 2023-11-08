package guru.xgm.jass.psi;

import com.intellij.lang.ASTNode;
import com.intellij.navigation.ItemPresentation;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFile;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;

public class PsiImplUtil_JASS {

    public static String getKey(JASS_Property element) {
        ASTNode keyNode = element.getNode().findChildByType(Types_JASS.KEY);
        if (keyNode != null) {
            // IMPORTANT: Convert embedded escaped spaces to simple spaces
            return keyNode.getText().replaceAll("\\\\ ", " ");
        } else {
            return null;
        }
    }

    public static String getValue(JASS_Property element) {
        ASTNode valueNode = element.getNode().findChildByType(Types_JASS.VALUE);
        if (valueNode != null) {
            return valueNode.getText();
        } else {
            return null;
        }
    }

    public static String getName(JASS_Property element) {
        return getKey(element);
    }

    public static PsiElement setName(JASS_Property element, String newName) {
        ASTNode keyNode = element.getNode().findChildByType(Types_JASS.KEY);
        if (keyNode != null) {
            JASS_Property property = ElementFactory_JASS.createProperty(element.getProject(), newName);
            ASTNode newKeyNode = property.getFirstChild().getNode();
            element.getNode().replaceChild(keyNode, newKeyNode);
        }
        return element;
    }

    public static PsiElement getNameIdentifier(JASS_Property element) {
        ASTNode keyNode = element.getNode().findChildByType(Types_JASS.KEY);
        if (keyNode != null) {
            return keyNode.getPsi();
        } else {
            return null;
        }
    }

    public static ItemPresentation getPresentation(final JASS_Property element) {
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
