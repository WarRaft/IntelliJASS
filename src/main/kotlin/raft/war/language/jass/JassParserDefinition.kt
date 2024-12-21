package raft.war.language.jass

import com.intellij.lang.ASTNode
import com.intellij.lang.ParserDefinition
import com.intellij.lang.PsiParser
import com.intellij.lexer.Lexer
import com.intellij.openapi.project.Project
import com.intellij.psi.FileViewProvider
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiFile
import com.intellij.psi.tree.IFileElementType
import com.intellij.psi.tree.TokenSet
import raft.war.language.jass.grammar.JassParser
import raft.war.language.jass.psi.JassTypes
import raft.war.language.jass.psi.JassTypes.LINE_COMMENT
import raft.war.language.jass.psi.JassTypes.STRVAL
import raft.war.language.jass.psi.file.JassFileElementType
import raft.war.language.jass.psi.file.JassFile

class JassParserDefinition : ParserDefinition {
    override fun createLexer(project: Project): Lexer = JassFlexAdapter()

    override fun createParser(project: Project): PsiParser = JassParser()

    override fun getFileNodeType(): IFileElementType = JassFileElementType.INSTANCE

    override fun createFile(viewProvider: FileViewProvider): PsiFile = JassFile(viewProvider)

    override fun createElement(node: ASTNode): PsiElement =
        JassTypes.Factory.createElement(node)


    override fun getCommentTokens(): TokenSet = TokenSet.create(LINE_COMMENT)
    override fun getStringLiteralElements(): TokenSet = TokenSet.create(STRVAL)
}
