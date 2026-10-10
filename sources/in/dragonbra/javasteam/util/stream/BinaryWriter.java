package in.dragonbra.javasteam.util.stream;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class BinaryWriter extends FilterOutputStream {
    private final byte[] writeBuffer;

    public BinaryWriter(OutputStream outputStream) {
        super(outputStream);
        this.writeBuffer = new byte[8];
    }

    public void writeInt(int i) throws IOException {
        ((FilterOutputStream) this).out.write(i & 255);
        ((FilterOutputStream) this).out.write((i >>> 8) & 255);
        ((FilterOutputStream) this).out.write((i >>> 16) & 255);
        ((FilterOutputStream) this).out.write((i >>> 24) & 255);
    }

    public void writeShort(short s) throws IOException {
        ((FilterOutputStream) this).out.write(s & 255);
        ((FilterOutputStream) this).out.write((s >>> 8) & 255);
    }

    public void writeLong(long j) throws IOException {
        byte[] bArr = this.writeBuffer;
        bArr[7] = (byte) (j >>> 56);
        bArr[6] = (byte) (j >>> 48);
        bArr[5] = (byte) (j >>> 40);
        bArr[4] = (byte) (j >>> 32);
        bArr[3] = (byte) (j >>> 24);
        bArr[2] = (byte) (j >>> 16);
        bArr[1] = (byte) (j >>> 8);
        bArr[0] = (byte) j;
        ((FilterOutputStream) this).out.write(bArr, 0, 8);
    }

    public void writeFloat(float f) throws IOException {
        writeInt(Float.floatToIntBits(f));
    }

    public void writeDouble(double d) throws IOException {
        writeLong(Double.doubleToLongBits(d));
    }

    public void writeBoolean(boolean z) throws IOException {
        ((FilterOutputStream) this).out.write(z ? 1 : 0);
    }

    public void writeByte(byte b) throws IOException {
        ((FilterOutputStream) this).out.write(b);
    }

    public void writeChar(char c) throws IOException {
        ((FilterOutputStream) this).out.write(c);
    }
}
