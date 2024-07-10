package raft.war.binary.parser.w3g.parser.exceptions;

public class PackedFormatException extends Exception {

    public PackedFormatException() {
        super();
    }

    public PackedFormatException(String message) {
        super(message);
    }

    public PackedFormatException(String message, Throwable cause) {
        super(message, cause);
    }

    public PackedFormatException(Throwable cause) {
        super(cause);
    }
}
