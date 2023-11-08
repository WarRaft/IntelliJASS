package guru.xgm.jass.lang;

import com.intellij.lang.Commenter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

final class Commenter_JASS implements Commenter {

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
