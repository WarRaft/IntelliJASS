package org.intellij.sdk.language.jass;

import com.intellij.lang.Commenter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

final class JassCommenter implements Commenter {

    @Override
    public @NotNull String getLineCommentPrefix() {
        return "#";
    }

    @Override
    public @NotNull String getBlockCommentPrefix() {
        return "";
    }

    @Nullable
    @Override
    public String getBlockCommentSuffix() {
        return null;
    }

    @Nullable
    @Override
    public String getCommentedBlockCommentPrefix() {
        return null;
    }

    @Nullable
    @Override
    public String getCommentedBlockCommentSuffix() {
        return null;
    }

}
