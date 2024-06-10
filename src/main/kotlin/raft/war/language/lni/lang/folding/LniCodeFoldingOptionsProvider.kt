package raft.war.language.lni.lang.folding

import com.intellij.application.options.editor.CodeFoldingOptionsProvider
import com.intellij.openapi.options.BeanConfigurable
import raft.war.language.lni.lang.folding.LniCodeFoldingSettings.Companion.instance

class LniCodeFoldingOptionsProvider : BeanConfigurable<LniCodeFoldingSettings?>(instance, "LNI"),
    CodeFoldingOptionsProvider {
    init {
        checkBox("Item", instance::isFoldItem, instance::isFoldItem.setter)
        checkBox("List", instance::isFoldList, instance::isFoldList.setter)
    }
}
