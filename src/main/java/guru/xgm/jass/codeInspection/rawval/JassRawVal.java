package guru.xgm.jass.codeInspection.rawval;

import com.intellij.psi.PsiElement;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

public class JassRawVal {

    static int bytes2int(byte[] bytes) {
        int i = 0;
        for (byte b : bytes) {
            i = i << 8 | (b & 0xFF);
        }
        return i;
    }

    JassRawVal(PsiElement elem) {
        final var text = elem.getText();
        final var textbytes = text.getBytes(StandardCharsets.ISO_8859_1);

        if (textbytes.length < 2 || textbytes[0] != 39 || textbytes[textbytes.length - 1] != 39) {
            error = true;
            safe = false;
            bytes = new byte[0];
            integer = 0;
            hex = "0x0";
            return;
        }
        error = false;
        bytes = Arrays.copyOfRange(textbytes, 1, textbytes.length - 1);
        safe = isSafe();

        integer = bytes2int(bytes);
        hex = "0x" + String.format("%02x", integer);
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
    final int integer;
    final String hex;
}
