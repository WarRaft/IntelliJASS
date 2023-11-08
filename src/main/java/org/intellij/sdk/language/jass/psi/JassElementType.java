package org.intellij.sdk.language.jass.psi;

import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.lang.Language_JASS;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class JassElementType extends IElementType {

    public JassElementType(@NotNull @NonNls String debugName) {
        super(debugName, Language_JASS.INSTANCE);
    }
}
