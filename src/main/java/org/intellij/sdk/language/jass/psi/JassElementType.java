package org.intellij.sdk.language.jass.psi;

import com.intellij.psi.tree.IElementType;
import org.intellij.sdk.language.jass.JassLanguage;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class JassElementType extends IElementType {

    public JassElementType(@NotNull @NonNls String debugName) {
        super(debugName, JassLanguage.INSTANCE);
    }
}
