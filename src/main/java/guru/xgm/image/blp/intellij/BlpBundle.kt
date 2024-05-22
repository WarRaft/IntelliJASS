package guru.xgm.image.blp.intellij

import org.jetbrains.annotations.NonNls
import org.jetbrains.annotations.PropertyKey
import com.intellij.DynamicBundle

@NonNls
private const val BUNDLE = "messages.BlpBundle"

object BlpBundle : DynamicBundle(BUNDLE) {
    @JvmStatic
    fun message(@PropertyKey(resourceBundle = BUNDLE) key: String, vararg params: Any) =
        getMessage(key, *params)
}
