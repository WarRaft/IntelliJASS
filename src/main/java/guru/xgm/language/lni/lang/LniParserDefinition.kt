package guru.xgm.language.lni.lang

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
import guru.xgm.language.lni.extapi.psi.LniPsiFileBase
import guru.xgm.language.lni.lang.LniLanguage.Companion.instance
import guru.xgm.language.lni.lexer.LniFlexAdapter
import guru.xgm.language.lni.parser.LniParser
import guru.xgm.language.lni.psi.LniTokenSets
import guru.xgm.language.lni.psi.LniTypes

class LniParserDefinition : ParserDefinition {
    override fun createLexer(project: Project): Lexer = LniFlexAdapter()

    override fun getCommentTokens(): TokenSet = LniTokenSets.COMMENTS

    override fun getStringLiteralElements(): TokenSet = TokenSet.EMPTY

    override fun createParser(project: Project): PsiParser = LniParser()

    override fun getFileNodeType(): IFileElementType = LNI_FILE

    override fun createFile(viewProvider: FileViewProvider): PsiFile = LniPsiFileBase(viewProvider)

    override fun createElement(node: ASTNode): PsiElement = LniTypes.Factory.createElement(node)
}

val LNI_FILE: IFileElementType = IFileElementType(instance)
