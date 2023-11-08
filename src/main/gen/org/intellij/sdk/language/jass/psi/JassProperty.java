// This is a generated file. Not intended for manual editing.
package org.intellij.sdk.language.jass.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;
import guru.xgm.jass.psi.PsiNameIdentifierOwner_JASS;
import com.intellij.navigation.ItemPresentation;

public interface JassProperty extends PsiNameIdentifierOwner_JASS {

  String getKey();

  String getValue();

  String getName();

  PsiElement setName(String newName);

  PsiElement getNameIdentifier();

  ItemPresentation getPresentation();

}
