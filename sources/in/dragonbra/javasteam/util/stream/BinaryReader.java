package in.dragonbra.javasteam.util.stream;

import in.dragonbra.javasteam.util.compat.ByteArrayOutputStreamCompat;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes2.dex */
public class BinaryReader extends FilterInputStream {
    private int position;
    private final byte[] readBuffer;

    public BinaryReader(InputStream inputStream) {
        super(inputStream);
        this.readBuffer = new byte[8];
        this.position = 0;
    }

    public int readInt() throws IOException {
        if (((FilterInputStream) this).in.read(this.readBuffer, 0, 4) < 4) {
            throw new EOFException();
        }
        this.position += 4;
        byte[] bArr = this.readBuffer;
        return (bArr[0] & 255) | ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8);
    }

    public byte[] readBytes(int i) throws IOException {
        if (i < 0) {
            throw new IOException("negative length");
        }
        int i2 = 0;
        if (i == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i];
        while (i2 < i) {
            int i3 = ((FilterInputStream) this).in.read(bArr, i2, i - i2);
            if (i3 < 0) {
                throw new EOFException();
            }
            i2 += i3;
        }
        this.position += i2;
        return bArr;
    }

    public byte readByte() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        if (i < 0) {
            throw new EOFException();
        }
        this.position++;
        return (byte) i;
    }

    public short readShort() throws IOException {
        if (((FilterInputStream) this).in.read(this.readBuffer, 0, 2) < 2) {
            throw new EOFException();
        }
        this.position += 2;
        byte[] bArr = this.readBuffer;
        return (short) ((bArr[0] & 255) | ((bArr[1] & 255) << 8));
    }

    public long readLong() throws IOException {
        if (((FilterInputStream) this).in.read(this.readBuffer, 0, 8) < 8) {
            throw new EOFException();
        }
        this.position += 8;
        byte[] bArr = this.readBuffer;
        return (((long) (bArr[7] & 255)) << 56) | (((long) (bArr[6] & 255)) << 48) | (((long) (bArr[5] & 255)) << 40) | (((long) (bArr[4] & 255)) << 32) | (((long) (bArr[3] & 255)) << 24) | (((long) (bArr[2] & 255)) << 16) | (((long) (bArr[1] & 255)) << 8) | ((long) (bArr[0] & 255));
    }

    public char readChar() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        if (i < 0) {
            throw new EOFException();
        }
        this.position++;
        return (char) i;
    }

    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    public boolean readBoolean() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        if (i < 0) {
            throw new EOFException();
        }
        this.position++;
        return i != 0;
    }

    public String readNullTermString() throws IOException {
        return readNullTermString(StandardCharsets.UTF_8);
    }

    public String readNullTermString(Charset charset) throws IOException {
        if (charset == null) {
            throw new IOException("charset is null");
        }
        if (charset.equals(StandardCharsets.UTF_8)) {
            return readNullTermUtf8String();
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(64);
        while (true) {
            int i = ((FilterInputStream) this).in.read();
            if (i < 0) {
                throw new EOFException();
            }
            this.position++;
            if (i != 0) {
                byteArrayOutputStream.write(i);
            } else {
                return ByteArrayOutputStreamCompat.toString(byteArrayOutputStream, charset);
            }
        }
    }

    private String readNullTermUtf8String() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i = ((FilterInputStream) this).in.read();
            if (i == 0 || i <= 0) {
                break;
            }
            byteArrayOutputStream.write(i);
            this.position++;
        }
        this.position++;
        return ByteArrayOutputStreamCompat.toString(byteArrayOutputStream);
    }

    public int getPosition() {
        return this.position;
    }
}
