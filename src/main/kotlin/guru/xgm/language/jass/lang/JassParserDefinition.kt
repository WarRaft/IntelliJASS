package guru.xgm.language.jass.lang

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
import guru.xgm.language.jass.psi.JassPsiFileBase
import guru.xgm.language.jass.lang.JassLanguage.Companion.instance
import guru.xgm.language.jass.lexer.JassFlexAdapter
import guru.xgm.language.jass.parser.JassParser
import guru.xgm.language.jass.psi.JassTokenSets
import guru.xgm.language.jass.psi.JassTypes

class JassParserDefinition : ParserDefinition {
    override fun createLexer(project: Project): Lexer = JassFlexAdapter()

    override fun getCommentTokens(): TokenSet = JassTokenSets.COMMENTS

    override fun getStringLiteralElements(): TokenSet = TokenSet.EMPTY

    override fun createParser(project: Project): PsiParser = JassParser()

    override fun getFileNodeType(): IFileElementType = JASS_FILE

    override fun createFile(viewProvider: FileViewProvider): PsiFile = JassPsiFileBase(viewProvider)

    override fun createElement(node: ASTNode): PsiElement = JassTypes.Factory.createElement(node)
}

val JASS_FILE: IFileElementType = IFileElementType(instance)
