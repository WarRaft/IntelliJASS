package raft.war.language.lni.lang

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
import raft.war.language.lni.extapi.psi.LniPsiFileBase
import raft.war.language.lni.lang.LniLanguage.Companion.instance
import raft.war.language.lni.lexer.LniFlexAdapter
import raft.war.language.lni.parser.LniParser
import raft.war.language.lni.psi.LniTokenSets
import raft.war.language.lni.psi.LniTypes

class LniParserDefinition : ParserDefinition {
    override fun createLexer(project: Project): Lexer = LniFlexAdapter()

    override fun getCommentTokens(): TokenSet = LniTokenSets.COMMENTS

    override fun getStringLiteralElements(): TokenSet = TokenSet.EMPTY

    override fun createParser(project: Project): PsiParser = raft.war.language.lni.parser.LniParser()

    override fun getFileNodeType(): IFileElementType = LNI_FILE

    override fun createFile(viewProvider: FileViewProvider): PsiFile = LniPsiFileBase(viewProvider)

    override fun createElement(node: ASTNode): PsiElement = raft.war.language.lni.psi.LniTypes.Factory.createElement(node)
}

val LNI_FILE: IFileElementType = IFileElementType(instance)
