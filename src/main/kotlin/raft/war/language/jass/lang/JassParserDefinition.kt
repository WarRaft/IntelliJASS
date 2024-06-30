package raft.war.language.jass.lang

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
import raft.war.language.jass.lang.JassLanguage.Companion.instance
import raft.war.language.jass.lexer.JassFlexAdapter
import raft.war.language.jass.parser.JassParser
import raft.war.language.jass.psi.JassPsiFileBase
import raft.war.language.jass.psi.JassTokenSets
import raft.war.language.jass.psi.JassTypes

class JassParserDefinition : ParserDefinition {
    override fun createLexer(project: Project): Lexer = JassFlexAdapter()

    override fun getCommentTokens(): TokenSet = JassTokenSets.COMMENTS

    override fun getStringLiteralElements(): TokenSet = TokenSet.EMPTY

    override fun createParser(project: Project): PsiParser = JassParser()

    override fun getFileNodeType(): IFileElementType = JASS_FILE

    override fun createFile(viewProvider: FileViewProvider): PsiFile = JassPsiFileBase(viewProvider)

    override fun createElement(node: ASTNode): PsiElement =
        JassTypes.Factory.createElement(node)
}

val JASS_FILE: IFileElementType = IFileElementType(instance)
