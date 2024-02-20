package guru.xgm.jass.openapi.projectRoots;

import com.intellij.openapi.projectRoots.*;
import guru.xgm.jass.icons.JassIcons;
import org.jdom.Element;
import org.jetbrains.annotations.Nls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;

// https://plugins.jetbrains.com/docs/intellij/sdk.html#working-with-a-custom-sdk
// https://intellij-support.jetbrains.com/hc/en-us/community/posts/206773745-Custom-SDK-Setup
public class JassSdkType extends SdkType {

    public JassSdkType() {
        super("JASS SDK");
    }

    @Override
    public @Nullable String suggestHomePath() {
        return null;
    }

    @Override
    public boolean isValidSdkHome(@NotNull String s) {
        return true;
    }

    @Override
    public @NotNull String suggestSdkName(@Nullable String s, @NotNull String s1) {
        return "JASS SDK";
    }

    @Override
    public @Nullable AdditionalDataConfigurable createAdditionalDataConfigurable(@NotNull SdkModel sdkModel, @NotNull SdkModificator sdkModificator) {
        return null;
    }

    @Override
    public @NotNull @Nls(capitalization = Nls.Capitalization.Title) String getPresentableName() {
        return "JASS SDK";
    }

    @Override
    public boolean setupSdkPaths(@NotNull Sdk sdk, @NotNull SdkModel sdkModel) {
        SdkModificator modificator = sdk.getSdkModificator();
        modificator.setVersionString(getVersionString(sdk));
        modificator.commitChanges(); // save
        return true;
    }

    public @Nullable String getVersionString(@NotNull Sdk sdk) {
        return "1.0.0";
    }

    @Override
    public void saveAdditionalData(@NotNull SdkAdditionalData sdkAdditionalData, @NotNull Element element) {
        // Must be empty
    }

    @Override
    public Icon getIcon() {
        return JassIcons.FILE;
    }

    @Nullable
    @Override
    public String getDefaultDocumentationUrl(@NotNull Sdk sdk) {
        return "https://xgm.guru";
    }

    @Nullable
    @Override
    public String getDownloadSdkUrl() {
        return "https://xgm.guru/p/wc3/IntelliJASS";
    }

}
