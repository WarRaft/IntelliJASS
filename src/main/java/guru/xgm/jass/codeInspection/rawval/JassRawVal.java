package guru.xgm.jass.codeInspection.rawval;

import com.intellij.psi.PsiElement;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

public class JassRawVal {
    JassRawVal(PsiElement elem) {
        final var text = elem.getText();
        final var textbytes = text.getBytes(StandardCharsets.ISO_8859_1);
        
        if (textbytes.length < 2 || textbytes[0] != 39 || textbytes[textbytes.length - 1] != 39) {
            error = true;
            safe = false;
            bytes = new byte[0];
            return;
        }
        error = false;
        bytes = Arrays.copyOfRange(textbytes, 1, textbytes.length - 1);
        safe = isSafe();
    }

    private boolean isSafe() {
        for (byte b : bytes) {
            if (b < 32 || b > 126 || b == 39) return false;
        }
        return true;
    }

    final boolean safe;
    final boolean error;
    final byte[] bytes;
}
