package guru.xgm.binary.openapi.fileTypes

import com.intellij.openapi.fileTypes.UserBinaryFileType
import javax.swing.Icon

object BlpFileType : UserBinaryFileType() {
    override fun getName(): String = "BLP"
    override fun getDescription(): String = "BLP viewer"
    override fun getDisplayName(): String = "BLP image"
    override fun getIcon(): Icon = BlpIcons.FILE
}
