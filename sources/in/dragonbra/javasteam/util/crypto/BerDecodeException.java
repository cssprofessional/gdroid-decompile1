package in.dragonbra.javasteam.util.crypto;

/* JADX INFO: loaded from: classes2.dex */
public final class BerDecodeException extends Exception {
    private final int _position;

    public BerDecodeException() {
        this._position = 0;
    }

    public BerDecodeException(String str) {
        super(str);
        this._position = 0;
    }

    public BerDecodeException(String str, Exception exc) {
        super(str, exc);
        this._position = 0;
    }

    public BerDecodeException(String str, int i) {
        super(str);
        this._position = i;
    }

    public BerDecodeException(String str, int i, Exception exc) {
        super(str, exc);
        this._position = i;
    }

    public int get_position() {
        return this._position;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return super.getMessage() + String.format(" (Position %d)%s", Integer.valueOf(this._position), System.lineSeparator());
    }
}
