@file:Suppress("UseJBColor")

package raft.war.ide

import com.intellij.openapi.editor.ElementColorProvider
import com.intellij.psi.PsiElement
import com.intellij.psi.util.elementType
import raft.war.language.angelscript.psi.AngelScriptElementFactory
import raft.war.language.angelscript.psi.AngelScriptPrimExpr
import raft.war.language.jass.psi.*
import java.awt.Color
import java.util.*

// AARRGGBB
class IdeElementColorProvider : ElementColorProvider {
    private fun cIntFromString(str: String): Int {
        try {
            val i = str.toInt()
            if (i < 0 || i > 255) return -1
            return i
        } catch (nfe: NumberFormatException) {
            return -1
        }
    }

    private fun cHexFromString(str: String): Int {
        val `val` = str.replaceFirst("\\$|0x".toRegex(), "")
        if (!`val`.matches("[0-9a-fA-F]{1,2}".toRegex())) return -1
        val i = `val`.toInt(16)
        return if (i < 0 || i > 255) -1 else i
    }

    private val funcCallRgb: Map<String, Int> = mapOf(
        "SetUnitVertexColor" to 1, // native SetUnitVertexColor takes unit whichUnit, integer red, integer green, integer blue, integer alpha returns nothing
        "SetTextTagColor" to 1, // native SetTextTagColor takes texttag t, integer red, integer green, integer blue, integer alpha returns nothing
        "TimerDialogSetTitleColor" to 1, // native TimerDialogSetTitleColor takes timerdialog whichDialog, integer red, integer green, integer blue, integer alpha returns nothing
        "TimerDialogSetTimeColor" to 1, // native TimerDialogSetTimeColor takes timerdialog whichDialog, integer red, integer green, integer blue, integer alpha returns nothing
        "LeaderboardSetLabelColor" to 1, // native LeaderboardSetLabelColor takes leaderboard lb, integer red, integer green, integer blue, integer alpha returns nothing
        "LeaderboardSetValueColor" to 1, // native LeaderboardSetValueColor takes leaderboard lb, integer red, integer green, integer blue, integer alpha returns nothing
        "LeaderboardSetItemLabelColor" to 2, // native LeaderboardSetItemLabelColor takes leaderboard lb, integer whichItem, integer red, integer green, integer blue, integer alpha returns nothing
        "LeaderboardSetItemValueColor" to 2, // native LeaderboardSetItemValueColor takes leaderboard lb, integer whichItem, integer red, integer green, integer blue, integer alpha returns nothing
        "MultiboardSetTitleTextColor" to 1, // native MultiboardSetTitleTextColor takes multiboard lb, integer red, integer green, integer blue, integer alpha returns nothing
        "MultiboardSetItemsValueColor" to 1, // native MultiboardSetItemsValueColor takes multiboard lb, integer red, integer green, integer blue, integer alpha returns nothing
        "MultiboardSetItemValueColor" to 1, // native MultiboardSetItemValueColor takes multiboarditem mbi, integer red, integer green, integer blue, integer alpha returns nothing
        "SetCineFilterStartColor" to 0, // native SetCineFilterStartColor takes integer red, integer green, integer blue, integer alpha returns nothing
        "SetCineFilterEndColor" to 0, // native SetCineFilterEndColor takes integer red, integer green, integer blue, integer alpha returns nothing
        "SetWaterBaseColor" to 0, // native SetWaterBaseColor takes integer red, integer green, integer blue, integer alpha returns nothing
        "SetImageColor" to 1, // native SetImageColor takes image whichImage, integer red, integer green, integer blue, integer alpha returns nothing
        "BlzSetSpecialEffectColor" to 1, // native BlzSetSpecialEffectColor takes effect whichEffect, integer r, integer g, integer b returns nothing
        "BlzConvertColor" to 0 // native BlzConvertColor takes integer a, integer r, integer g, integer b returns integer

        // native SetLightningColor takes lightning whichBolt, real r, real g, real b, real a returns boolean
    )

    private fun fromFuncArgRGBA(argList: JassArgList?, start: Int): Color? {
        if (argList == null) return null
        val exprs = argList.exprList
        if (exprs.size < start + 4) return null
        val color = intArrayOf(-1, -1, -1, -1)

        for (i in 0..3) {
            val prim = exprs[i + start] as? JassPrimExpr ?: return null
            val intval = prim.num?.intval
            if (intval != null) {
                color[i] = cIntFromString(intval.text)
                continue
            }
            val hexval = prim.num?.hexval
            if (hexval != null) color[i] = cHexFromString(hexval.text)
        }


        for (i in color) {
            if (i < 0) return null
        }

        return Color(
            color[0],
            color[1],
            color[2],
            color[3]
        )
    }

    override fun getColorFrom(psiElement: PsiElement): Color? {
        // AngelScript - hexval
        if (psiElement is AngelScriptPrimExpr) {
            val hexval = psiElement.hexval
            if (hexval != null) return fromHex(hexval.text)
            return null
        }

        // JASS - hexval
        if (psiElement.elementType == JassTypes.HEXVAL) {
            return fromHex(psiElement.text)
        }

        // JASS - funcall
        if (psiElement is JassFunCall) {
            val name: String = psiElement.funName.text
            if (funcCallRgb.containsKey(name)) return fromFuncArgRGBA(psiElement.argList, funcCallRgb[name]!!)
            return null
        }

        return null
    }

    // https://plugins.jetbrains.com/docs/intellij/modifying-psi.html#creating-the-new-psi
    override fun setColorTo(psiElement: PsiElement, color: Color) {
        val hex = "0x" + String.format("%02x%02x%02x%02x", color.alpha, color.red, color.green, color.blue).uppercase(
            Locale.getDefault()
        )
        val project = psiElement.project

        // AngelScript - hexval
        if (psiElement is AngelScriptPrimExpr) {
            val hexval = psiElement.hexval
            if (hexval != null) {
                AngelScriptElementFactory.replaceExprChild(project, hexval, hex)
                return
            }
        }

        // JASS - hexval
        if (psiElement.elementType == JassTypes.HEXVAL) {
            JassElementTextFactory.replaceExprChildChild(project, psiElement, hex)
            return
        }

        // JASS - func call
        if (psiElement is JassFunCall) {
            val name: String = psiElement.funName.text
            if (funcCallRgb.containsKey(name)) {
                val args: JassArgList = psiElement.argList ?: return
                val exprlist = args.exprList
                val start = funcCallRgb[name]!!
                if (exprlist.size < start + 4) return
                val ints = intArrayOf(color.red, color.green, color.blue, color.alpha)
                for (i in 0..3) {
                    val child = exprlist[start + i].firstChild ?: continue
                    JassElementTextFactory.replaceExprChild(project, child, ints[i].toString())
                }
            }
        }
    }

}

private fun fromHex(hex: String): Color? {
    val `val` = hex.replaceFirst("\\$|0x".toRegex(), "")
    if (!`val`.matches("[0-9a-fA-F]{8}".toRegex())) return null

    return Color(
        `val`.substring(2, 4).toInt(16),
        `val`.substring(4, 6).toInt(16),
        `val`.substring(6, 8).toInt(16),
        `val`.substring(0, 2).toInt(16)
    )
}
