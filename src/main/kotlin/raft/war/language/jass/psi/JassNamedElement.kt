package raft.war.language.jass.psi

import com.intellij.psi.NavigatablePsiElement
import com.intellij.psi.PsiNameIdentifierOwner
import raft.war.language.jass.psi.compositeElement.JassCompositeElement

interface JassNamedElement : JassCompositeElement, PsiNameIdentifierOwner, NavigatablePsiElement
