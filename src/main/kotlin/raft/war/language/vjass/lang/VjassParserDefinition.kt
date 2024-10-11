package raft.war.language.vjass.lang

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
import raft.war.language.vjass.extapi.psi.VjassPsiFileBase
import raft.war.language.vjass.VjassFlexAdapter
import raft.war.language.vjass.psi.VjassTokenSets

class VjassParserDefinition : ParserDefinition {
    override fun createLexer(project: Project): Lexer = VjassFlexAdapter()

    override fun getCommentTokens(): TokenSet = VjassTokenSets.COMMENTS

    override fun getStringLiteralElements(): TokenSet = TokenSet.EMPTY

    override fun createParser(project: Project): PsiParser =
        raft.war.language.vjass.grammar.VjassParser()

    override fun getFileNodeType(): IFileElementType = VJASS_FILE

    override fun createFile(viewProvider: FileViewProvider): PsiFile = VjassPsiFileBase(viewProvider)

    override fun createElement(node: ASTNode): PsiElement = raft.war.language.vjass.psi.VjassTypes.Factory.createElement(node)
}

val VJASS_FILE: IFileElementType = IFileElementType(VjassLanguage.instance)
