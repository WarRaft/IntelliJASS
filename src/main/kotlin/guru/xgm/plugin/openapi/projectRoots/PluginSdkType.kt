package guru.xgm.plugin.openapi.projectRoots

import com.intellij.openapi.projectRoots.*
import guru.xgm.language.jass.icons.JassIcons
import org.jdom.Element
import org.jetbrains.annotations.Nls
import javax.swing.Icon


// https://plugins.jetbrains.com/docs/intellij/sdk.html#working-with-a-custom-sdk
// https://intellij-support.jetbrains.com/hc/en-us/community/posts/206773745-Custom-SDK-Setup
class PluginSdkType : SdkType("JASS SDK") {
    override fun suggestHomePath(): String? = null

    override fun isValidSdkHome(s: String): Boolean {
        return true
    }

    override fun suggestSdkName(s: String?, s1: String): String = "JASS SDK"

    override fun createAdditionalDataConfigurable(
        sdkModel: SdkModel,
        sdkModificator: SdkModificator
    ): AdditionalDataConfigurable? = null

    override fun getPresentableName(): @Nls(capitalization = Nls.Capitalization.Title) String = "JASS SDK"

    override fun setupSdkPaths(sdk: Sdk, sdkModel: SdkModel): Boolean {
        val modificator = sdk.sdkModificator
        modificator.versionString = getVersionString(sdk)
        modificator.commitChanges()
        return true
    }

    override fun getVersionString(sdk: Sdk): String = "1.0.0"

    override fun saveAdditionalData(sdkAdditionalData: SdkAdditionalData, element: Element) = Unit

    override fun getIcon(): Icon = JassIcons.FILE

    override fun getDefaultDocumentationUrl(sdk: Sdk): String = "https://warraft.github.io/AngelScript-doc"

    override fun getDownloadSdkUrl(): String = "https://warraft.github.io/AngelScript-doc"
}
