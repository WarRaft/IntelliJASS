package guru.xgm.language.vjass.lang

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
import guru.xgm.language.vjass.extapi.psi.VjassPsiFileBase
import guru.xgm.language.vjass.lexer.VjassFlexAdapter
import guru.xgm.language.vjass.parser.VjassParser
import guru.xgm.language.vjass.psi.VjassTokenSets
import guru.xgm.language.vjass.psi.VjassTypes

class VjassParserDefinition : ParserDefinition {
    override fun createLexer(project: Project): Lexer = VjassFlexAdapter()

    override fun getCommentTokens(): TokenSet = VjassTokenSets.COMMENTS

    override fun getStringLiteralElements(): TokenSet = TokenSet.EMPTY

    override fun createParser(project: Project): PsiParser = VjassParser()

    override fun getFileNodeType(): IFileElementType = VJASS_FILE

    override fun createFile(viewProvider: FileViewProvider): PsiFile = VjassPsiFileBase(viewProvider)

    override fun createElement(node: ASTNode): PsiElement = VjassTypes.Factory.createElement(node)
}

val VJASS_FILE: IFileElementType = IFileElementType(VjassLanguage.instance)
