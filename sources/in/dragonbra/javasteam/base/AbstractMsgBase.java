package in.dragonbra.javasteam.base;

import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import in.dragonbra.javasteam.util.stream.SeekOrigin;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AbstractMsgBase.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractMsgBase {
    private final MemoryStream payload;
    private final BinaryReader reader;
    private final BinaryWriter writer;

    public AbstractMsgBase() {
        this(0, 1, null);
    }

    public final String readNullTermString() throws IOException {
        return readNullTermString$default(this, null, 1, null);
    }

    public final void writeNullTermString(String str) throws IOException {
        writeNullTermString$default(this, str, null, 2, null);
    }

    public final void writeString(String str) throws IOException {
        writeString$default(this, str, null, 2, null);
    }

    public AbstractMsgBase(int i) {
        MemoryStream memoryStream = new MemoryStream(i);
        this.payload = memoryStream;
        this.reader = new BinaryReader(memoryStream);
        this.writer = new BinaryWriter(memoryStream.asOutputStream());
    }

    public /* synthetic */ AbstractMsgBase(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    public final MemoryStream getPayload() {
        return this.payload;
    }

    public final long seek(long j, SeekOrigin seekOrigin) {
        Intrinsics.checkNotNullParameter(seekOrigin, "seekOrigin");
        return this.payload.seek(j, seekOrigin);
    }

    public final void writeByte(byte b) throws IOException {
        this.writer.write(b);
    }

    public final void writeBytes(byte[] data) throws IOException {
        Intrinsics.checkNotNullParameter(data, "data");
        this.writer.write(data);
    }

    public final void writeShort(short s) throws IOException {
        this.writer.writeShort(s);
    }

    public final void writeInt(int i) throws IOException {
        this.writer.writeInt(i);
    }

    public final void writeLong(long j) throws IOException {
        this.writer.writeLong(j);
    }

    public final void writeFloat(float f) throws IOException {
        this.writer.writeFloat(f);
    }

    public final void writeDouble(double d) throws IOException {
        this.writer.writeDouble(d);
    }

    public static /* synthetic */ void writeString$default(AbstractMsgBase abstractMsgBase, String str, Charset UTF_8, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: writeString");
        }
        if ((i & 2) != 0) {
            UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        }
        abstractMsgBase.writeString(str, UTF_8);
    }

    public final void writeString(String str, Charset charset) throws IOException {
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (str == null) {
            return;
        }
        byte[] bytes = str.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        writeBytes(bytes);
    }

    public static /* synthetic */ void writeNullTermString$default(AbstractMsgBase abstractMsgBase, String str, Charset UTF_8, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: writeNullTermString");
        }
        if ((i & 2) != 0) {
            UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        }
        abstractMsgBase.writeNullTermString(str, UTF_8);
    }

    public final void writeNullTermString(String str, Charset charset) throws IOException {
        Intrinsics.checkNotNullParameter(charset, "charset");
        writeString(str, charset);
        writeString("\u0000", charset);
    }

    public final byte readByte() throws IOException {
        return this.reader.readByte();
    }

    public final byte[] readBytes(int i) throws IOException {
        byte[] bytes = this.reader.readBytes(i);
        Intrinsics.checkNotNullExpressionValue(bytes, "readBytes(...)");
        return bytes;
    }

    public final short readShort() throws IOException {
        return this.reader.readShort();
    }

    public final int readInt() throws IOException {
        return this.reader.readInt();
    }

    public final long readLong() throws IOException {
        return this.reader.readLong();
    }

    public final float readFloat() throws IOException {
        return this.reader.readFloat();
    }

    public final double readDouble() throws IOException {
        return this.reader.readDouble();
    }

    public static /* synthetic */ String readNullTermString$default(AbstractMsgBase abstractMsgBase, Charset UTF_8, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readNullTermString");
        }
        if ((i & 1) != 0) {
            UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        }
        return abstractMsgBase.readNullTermString(UTF_8);
    }

    public final String readNullTermString(Charset charset) throws IOException {
        Intrinsics.checkNotNullParameter(charset, "charset");
        String nullTermString = this.reader.readNullTermString(charset);
        Intrinsics.checkNotNullExpressionValue(nullTermString, "readNullTermString(...)");
        return nullTermString;
    }
}
