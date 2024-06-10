package raft.war.language.zinc.lang

import com.intellij.lang.Commenter

class ZincCommenter : Commenter {
    override fun getLineCommentPrefix(): String = "//"
    override fun getBlockCommentPrefix(): String = "/*"
    override fun getBlockCommentSuffix(): String = "*/"
    override fun getCommentedBlockCommentPrefix(): String = "/*"
    override fun getCommentedBlockCommentSuffix(): String = "*/"
}
