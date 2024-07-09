package raft.war.binary.parser.w3g.parser.utils;

import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;

public class ByteBufferUtil {

    public static void writeUtf8CString(ByteBuffer buffer, String s)
    {
        buffer.put(s.getBytes(StandardCharsets.UTF_8));
        buffer.put((byte) 0);
    }

    public static byte[] readCStringBytes(ByteBuffer buffer) {
        int startPosition = buffer.position();

        while ( buffer.get() != 0);

        byte[] utf8String = new byte[buffer.position() - startPosition - 1];
        buffer.get(startPosition, utf8String);

        return utf8String;
    }

    public static int utf8CStringLength(String string)
    {
        return string.getBytes(StandardCharsets.UTF_8).length + 1;
    }

    public static String readUtf8CString(ByteBuffer buffer) {
        return new String(readCStringBytes(buffer), StandardCharsets.UTF_8);
    }
}
