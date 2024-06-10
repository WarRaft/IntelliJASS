package guru.xgm.language.jass.codeInspection.number;

import com.intellij.psi.PsiElement;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

public class JassRawcode {

    static int bytes2int(byte[] bytes) {
        int i = 0;
        for (byte b : bytes) {
            i = i << 8 | (b & 0xFF);
        }
        return i;
    }

    public JassRawcode(PsiElement elem) {
        final var text = elem.getText();
        final var textbytes = text.getBytes(StandardCharsets.UTF_8);

        if (textbytes.length < 2 || textbytes[0] != 39 || textbytes[textbytes.length - 1] != 39) {
            error = true;
            safe = false;
            bytes = new byte[0];
            integer = 0;
            intstr = "0";
            hex = "0x0";
            validLength = false;
            strval = "";
            return;
        }
        error = false;
        bytes = Arrays.copyOfRange(textbytes, 1, textbytes.length - 1);
        safe = isSafe();

        strval = new String(bytes, StandardCharsets.UTF_8);

        validLength = bytes.length == 1 || bytes.length == 4;
        integer = bytes2int(bytes);
        intstr = Long.toString(integer & 0xFFFFFFFFL);
        hex = "0x" + String.format("%02x", integer).toUpperCase();
    }

    private boolean isSafe() {
        for (byte b : bytes) {
            if (b < 32 || b > 126 || b == 39) return false;
        }
        return true;
    }

    public final boolean safe;
    public final boolean validLength;
    public final boolean error;
    public final byte[] bytes;
    public final int integer;
    public final String intstr;
    public final String hex;
    public final String strval;
}
