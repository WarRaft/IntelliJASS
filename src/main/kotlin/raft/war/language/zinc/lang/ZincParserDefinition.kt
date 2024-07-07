package raft.war.language.zinc.lang

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
import raft.war.language.zinc.extapi.psi.ZincPsiFileBase
import raft.war.language.zinc.lexer.ZincFlexAdapter
import raft.war.language.zinc.psi.ZincTokenSets

class ZincParserDefinition : ParserDefinition {
    override fun createLexer(project: Project): Lexer = ZincFlexAdapter()
    override fun getCommentTokens(): TokenSet = ZincTokenSets.COMMENTS
    override fun getStringLiteralElements(): TokenSet = TokenSet.EMPTY
    override fun createParser(project: Project): PsiParser =
        raft.war.language.zinc.grammar.ZincParser()
    override fun getFileNodeType(): IFileElementType = ZINC_FILE
    override fun createFile(viewProvider: FileViewProvider): PsiFile = ZincPsiFileBase(viewProvider)
    override fun createElement(node: ASTNode): PsiElement = raft.war.language.zinc.psi.ZincTypes.Factory.createElement(node)
}

val ZINC_FILE: IFileElementType = IFileElementType(ZincLanguage.instance)
