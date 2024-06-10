package guru.xgm.language.angelscript.codeInspection

import com.intellij.DynamicBundle
import guru.xgm.language.angelscript.codeInspection.AngelScriptInspectionBundle
import org.jetbrains.annotations.Nls
import org.jetbrains.annotations.NonNls
import org.jetbrains.annotations.PropertyKey

@NonNls
private const val BUNDLE = "messages.AngelScriptInspectionsBundle"

object AngelScriptInspectionBundle : DynamicBundle(BUNDLE) {
    @JvmStatic
    fun message(@PropertyKey(resourceBundle = BUNDLE) key: String, vararg params: Any) =
        getMessage(key, *params)
}
