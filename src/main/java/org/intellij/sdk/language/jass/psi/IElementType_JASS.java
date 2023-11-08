package org.intellij.sdk.language.jass.psi;

import com.intellij.psi.tree.IElementType;
import guru.xgm.jass.lang.Language_JASS;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class IElementType_JASS extends IElementType {

    public IElementType_JASS(@NotNull @NonNls String debugName) {
        super(debugName, Language_JASS.INSTANCE);
    }
}
