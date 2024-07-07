package raft.war.language.wts.lang

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
import raft.war.language.wts.extapi.psi.WtsPsiFileBase
import raft.war.language.wts.lexer.WtsFlexAdapter
import raft.war.language.wts.psi.WtsTokenSets

class WtsParserDefinition : ParserDefinition {
    override fun createLexer(project: Project): Lexer = WtsFlexAdapter()

    override fun getCommentTokens(): TokenSet = WtsTokenSets.COMMENTS

    override fun getStringLiteralElements(): TokenSet = TokenSet.EMPTY

    override fun createParser(project: Project): PsiParser = raft.war.language.wts.grammar.WtsParser()

    override fun getFileNodeType(): IFileElementType = WTS_FILE

    override fun createFile(viewProvider: FileViewProvider): PsiFile = WtsPsiFileBase(viewProvider)

    override fun createElement(node: ASTNode): PsiElement = raft.war.language.wts.psi.WtsTypes.Factory.createElement(node)

}

val WTS_FILE: IFileElementType = IFileElementType(WtsLanguage.instance)
