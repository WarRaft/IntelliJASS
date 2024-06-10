package raft.war.language.vjass.lang

import com.intellij.lang.Commenter

class VjassCommenter : Commenter {
    override fun getLineCommentPrefix(): String = "//"
    override fun getBlockCommentPrefix(): String = "/*"
    override fun getBlockCommentSuffix(): String = "*/"
    override fun getCommentedBlockCommentPrefix(): String = "/*"
    override fun getCommentedBlockCommentSuffix(): String = "*/"
}
