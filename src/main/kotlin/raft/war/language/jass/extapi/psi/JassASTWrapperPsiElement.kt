package raft.war.language.jass.extapi.psi

import com.intellij.extapi.psi.ASTWrapperPsiElement
import com.intellij.lang.ASTNode
import raft.war.language.jass.psi.JassPsiNameIdentifierOwner

abstract class JassASTWrapperPsiElement(node: ASTNode) : ASTWrapperPsiElement(node), JassPsiNameIdentifierOwner
