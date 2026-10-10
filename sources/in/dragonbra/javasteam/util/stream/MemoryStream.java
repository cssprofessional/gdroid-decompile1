package in.dragonbra.javasteam.util.stream;

import com.google.protobuf.ByteString;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MemoryStream extends InputStream implements Closeable {
    private byte[] buffer;
    private final boolean bufferVisible;
    private int capacity;
    private final boolean expandable;
    private int length;
    private int mark;
    private final int origin;
    private int position;
    private final boolean writable;

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    public MemoryStream() {
        this(0);
    }

    public MemoryStream(int i) {
        this.buffer = new byte[i];
        this.capacity = i;
        this.length = 0;
        this.origin = 0;
        this.position = 0;
        this.writable = true;
        this.expandable = true;
        this.bufferVisible = true;
    }

    public MemoryStream(ByteString byteString) {
        this(byteString.toByteArray(), true);
    }

    public MemoryStream(byte[] bArr) {
        this(bArr, true);
    }

    public MemoryStream(byte[] bArr, boolean z) {
        this.buffer = bArr;
        this.capacity = bArr.length;
        this.length = bArr.length;
        this.origin = 0;
        this.position = 0;
        this.writable = z;
        this.expandable = true;
        this.bufferVisible = false;
    }

    public MemoryStream(byte[] bArr, int i, int i2) {
        this(bArr, i, i2, true, false);
    }

    public MemoryStream(byte[] bArr, int i, int i2, boolean z) {
        this(bArr, i, i2, z, false);
    }

    public MemoryStream(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.buffer = bArr;
        int i3 = i2 + i;
        this.capacity = i3;
        this.length = i3;
        this.origin = i;
        this.position = i;
        this.writable = z;
        this.bufferVisible = z2;
        this.expandable = false;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.length - this.position;
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.mark = this.position;
    }

    @Override // java.io.InputStream
    public void reset() {
        this.position = this.mark;
    }

    @Override // java.io.InputStream
    public int read() {
        int i = this.position;
        if (i >= this.length) {
            return -1;
        }
        byte[] bArr = this.buffer;
        this.position = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.position;
        int i4 = this.length;
        if (i3 >= i4) {
            return -1;
        }
        if (i3 > i4 - i2) {
            i2 = i4 - i3;
        }
        System.arraycopy(this.buffer, i3, bArr, i, i2);
        this.position += i2;
        return i2;
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        return seek(j, SeekOrigin.CURRENT) - ((long) this.position);
    }

    public byte[] getBuffer() {
        if (!this.bufferVisible) {
            throw new IllegalStateException("Cannot call getBuffer().");
        }
        return this.buffer;
    }

    public int getCapacity() {
        return this.capacity - this.origin;
    }

    public void setCapacity(int i) {
        byte[] bArr;
        if (!this.expandable) {
            throw new UnsupportedOperationException("Cannot expand this MemoryStream");
        }
        byte[] bArr2 = this.buffer;
        if (bArr2 == null || i != bArr2.length) {
            if (i > 0) {
                bArr = new byte[i];
                if (bArr2 != null) {
                    System.arraycopy(bArr2, 0, bArr, 0, this.length);
                }
            } else {
                bArr = null;
            }
            this.buffer = bArr;
            this.capacity = i;
        }
    }

    public long getLength() {
        return this.length - this.origin;
    }

    public void setLength(long j) {
        int i;
        if (j < 0) {
            throw new IndexOutOfBoundsException("MemoryStream length must be non-negative.");
        }
        if (!this.writable) {
            throw new UnsupportedOperationException("Cannot write to this stream.");
        }
        int i2 = ((int) j) + this.origin;
        if (!expand(i2) && i2 > (i = this.length)) {
            clearBuffer(i, i2);
        }
        this.length = i2;
        if (this.position > i2) {
            this.position = i2;
        }
    }

    public long getPosition() {
        return this.position - this.origin;
    }

    public void setPosition(long j) {
        this.position = this.origin + ((int) j);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.util.stream.MemoryStream$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$in$dragonbra$javasteam$util$stream$SeekOrigin;

        static {
            int[] iArr = new int[SeekOrigin.values().length];
            $SwitchMap$in$dragonbra$javasteam$util$stream$SeekOrigin = iArr;
            try {
                iArr[SeekOrigin.BEGIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$util$stream$SeekOrigin[SeekOrigin.CURRENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$in$dragonbra$javasteam$util$stream$SeekOrigin[SeekOrigin.END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public long seek(long j, SeekOrigin seekOrigin) {
        int i;
        int i2 = AnonymousClass1.$SwitchMap$in$dragonbra$javasteam$util$stream$SeekOrigin[seekOrigin.ordinal()];
        if (i2 == 1) {
            i = this.origin;
        } else if (i2 == 2) {
            i = this.position;
        } else if (i2 == 3) {
            i = this.length;
        } else {
            throw new IllegalArgumentException("loc");
        }
        int i3 = i + ((int) j);
        this.position = i3;
        return i3;
    }

    public void write(byte[] bArr, int i, int i2) {
        if (!this.writable) {
            throw new UnsupportedOperationException("Cannot write to this stream.");
        }
        int i3 = this.position + i2;
        if (i3 > this.length && !expand(i3)) {
            int i4 = this.position;
            int i5 = this.length;
            if (i4 > i5) {
                clearBuffer(i5, i3);
            }
        }
        System.arraycopy(bArr, i, this.buffer, this.position, i2);
        this.position = i3;
        if (i3 > this.length) {
            this.length = i3;
        }
    }

    public void writeByte(byte b) {
        int i;
        int i2;
        if (!this.writable) {
            throw new UnsupportedOperationException("Cannot write to this stream.");
        }
        int i3 = this.position;
        if (i3 >= this.length) {
            int i4 = i3 + 1;
            if (!expand(i4) && (i = this.position) > (i2 = this.length)) {
                clearBuffer(i2, i);
            }
            this.length = i4;
        }
        byte[] bArr = this.buffer;
        int i5 = this.position;
        this.position = i5 + 1;
        bArr[i5] = b;
    }

    private void clearBuffer(int i, int i2) {
        Arrays.fill(this.buffer, i, i2, (byte) 0);
    }

    private boolean expand(int i) {
        if (i <= this.capacity) {
            return false;
        }
        setCapacity(Math.max(this.capacity * 2, Math.max(256, i)));
        return true;
    }

    public byte[] toByteArray() {
        int i = this.length;
        byte[] bArr = new byte[i];
        System.arraycopy(this.buffer, 0, bArr, 0, i);
        return bArr;
    }

    @Override // java.io.InputStream
    public byte[] readAllBytes() {
        return toByteArray();
    }

    public OutputStream asOutputStream() {
        return new OutputStreamWrapper(this);
    }

    public static class OutputStreamWrapper extends OutputStream {
        private final MemoryStream memoryStream;

        public OutputStreamWrapper(MemoryStream memoryStream) {
            this.memoryStream = memoryStream;
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            this.memoryStream.write(bArr, i, i2);
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            this.memoryStream.writeByte((byte) i);
        }
    }
}
