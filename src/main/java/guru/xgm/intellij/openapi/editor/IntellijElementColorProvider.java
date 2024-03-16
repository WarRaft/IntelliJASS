package guru.xgm.intellij.openapi.editor;

import com.intellij.openapi.editor.ElementColorProvider;
import com.intellij.psi.PsiElement;
import guru.xgm.language.jass.psi.JassArgList;
import guru.xgm.language.jass.psi.JassElementFactory;
import guru.xgm.language.jass.psi.JassFunCall;
import guru.xgm.language.jass.psi.JassPrimExpr;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.Map;

// AARRGGBB
public class IntellijElementColorProvider implements ElementColorProvider {

    private @Nullable Color fromHex(@NotNull String hex) {
        final String val = hex.replaceFirst("\\$|0x", "");
        if (!val.matches("[0-9a-fA-F]{8}")) return null;

        //noinspection UseJBColor
        return new Color(
                Integer.valueOf(val.substring(2, 4), 16),
                Integer.valueOf(val.substring(4, 6), 16),
                Integer.valueOf(val.substring(6, 8), 16),
                Integer.valueOf(val.substring(0, 2), 16)
        );
    }

    private int cIntFromString(@NotNull String str) {
        try {
            final int i = Integer.parseInt(str);
            if (i < 0 || i > 255) return -1;
            return i;
        } catch (NumberFormatException nfe) {
            return -1;
        }
    }

    private int cHexFromString(@NotNull String str) {
        final String val = str.replaceFirst("\\$|0x", "");
        if (!val.matches("[0-9a-fA-F]{1,2}")) return -1;
        final int i = Integer.valueOf(val, 16);
        return i < 0 || i > 255 ? -1 : i;
    }

    private final Map<String, Integer> funcCallRgb = Map.ofEntries(
            Map.entry("SetUnitVertexColor", 1), // native SetUnitVertexColor takes unit whichUnit, integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("SetTextTagColor", 1), // native SetTextTagColor takes texttag t, integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("TimerDialogSetTitleColor", 1), // native TimerDialogSetTitleColor takes timerdialog whichDialog, integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("TimerDialogSetTimeColor", 1), // native TimerDialogSetTimeColor takes timerdialog whichDialog, integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("LeaderboardSetLabelColor", 1), // native LeaderboardSetLabelColor takes leaderboard lb, integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("LeaderboardSetValueColor", 1), // native LeaderboardSetValueColor takes leaderboard lb, integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("LeaderboardSetItemLabelColor", 2), // native LeaderboardSetItemLabelColor takes leaderboard lb, integer whichItem, integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("LeaderboardSetItemValueColor", 2), // native LeaderboardSetItemValueColor takes leaderboard lb, integer whichItem, integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("MultiboardSetTitleTextColor", 1), // native MultiboardSetTitleTextColor takes multiboard lb, integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("MultiboardSetItemsValueColor", 1), // native MultiboardSetItemsValueColor takes multiboard lb, integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("MultiboardSetItemValueColor", 1), // native MultiboardSetItemValueColor takes multiboarditem mbi, integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("SetCineFilterStartColor", 0), // native SetCineFilterStartColor takes integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("SetCineFilterEndColor", 0), // native SetCineFilterEndColor takes integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("SetWaterBaseColor", 0), // native SetWaterBaseColor takes integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("SetImageColor", 1), // native SetImageColor takes image whichImage, integer red, integer green, integer blue, integer alpha returns nothing
            Map.entry("BlzSetSpecialEffectColor", 1), // native BlzSetSpecialEffectColor takes effect whichEffect, integer r, integer g, integer b returns nothing
            Map.entry("BlzConvertColor", 0) // native BlzConvertColor takes integer a, integer r, integer g, integer b returns integer
            // native SetLightningColor takes lightning whichBolt, real r, real g, real b, real a returns boolean
    );


    private @Nullable Color fromFuncArgRGBA(@Nullable JassArgList argList, int start) {
        if (argList == null) return null;
        final var exprs = argList.getExprList();
        if (exprs.size() < start + 4) return null;
        final int[] color = new int[]{-1, -1, -1, -1};

        for (int i = 0; i < 4; i++) {
            final var prim = exprs.get(i + start);
            if (!(prim instanceof JassPrimExpr)) return null;
            final var intval = ((JassPrimExpr) prim).getIntval();
            if (intval != null) {
                color[i] = cIntFromString(intval.getText());
                continue;
            }
            final var hexval = ((JassPrimExpr) prim).getHexval();
            if (hexval != null) color[i] = cHexFromString(hexval.getText());
        }


        for (int i : color) {
            if (i < 0) return null;
        }

        //noinspection UseJBColor
        return new Color(
                color[0],
                color[1],
                color[2],
                color[3]
        );
    }

    @Override
    public @Nullable Color getColorFrom(@NotNull PsiElement psiElement) {
        if (psiElement instanceof JassPrimExpr prim) {
            final var hexval = prim.getHexval();
            if (hexval != null) return fromHex(hexval.getText());
            return null;
        }

        if (psiElement instanceof JassFunCall call) {
            final var name = call.getId().getText();
            if (funcCallRgb.containsKey(name)) return fromFuncArgRGBA(call.getArgList(), funcCallRgb.get(name));
            return null;
        }

        return null;
    }

    @Override
    public void setColorTo(@NotNull PsiElement psiElement, @NotNull Color color) {
        final String hex = "0x" + String.format("%02x%02x%02x%02x", color.getAlpha(), color.getRed(), color.getGreen(), color.getBlue()).toUpperCase();
        @NotNull final var project = psiElement.getProject();

        if (psiElement instanceof JassPrimExpr prim) {
            final var hexval = prim.getHexval();
            if (hexval != null) {
                JassElementFactory.replaceExprChild(project, hexval, hex);
                return;
            }
        }

        if (psiElement instanceof JassFunCall call) {
            final var name = call.getId().getText();
            if (funcCallRgb.containsKey(name)) {
                final var args = call.getArgList();
                if (args == null) return;
                final var exprlist = args.getExprList();
                final int start = funcCallRgb.get(name);
                if (exprlist.size() < start + 4) return;
                final int[] ints = new int[]{color.getRed(), color.getGreen(), color.getBlue(), color.getAlpha()};
                for (int i = 0; i < 4; i++) {
                    final var child = exprlist.get(start + i).getFirstChild();
                    if (child == null) continue;
                    JassElementFactory.replaceExprChild(project, child, Integer.toString(ints[i]));
                }
            }
        }
    }
}
