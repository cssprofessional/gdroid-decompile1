package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableHeader;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.tukaani.xz.common.Util;

/* JADX INFO: loaded from: classes.dex */
public class MsgHdr implements ISteamSerializableHeader {
    private EMsg msg = EMsg.Invalid;
    private long targetJobID = Util.VLI_MAX;
    private long sourceJobID = Util.VLI_MAX;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableHeader
    public void setEMsg(EMsg eMsg) {
        this.msg = eMsg;
    }

    public EMsg getMsg() {
        return this.msg;
    }

    public void setMsg(EMsg eMsg) {
        this.msg = eMsg;
    }

    public long getTargetJobID() {
        return this.targetJobID;
    }

    public void setTargetJobID(long j) {
        this.targetJobID = j;
    }

    public long getSourceJobID() {
        return this.sourceJobID;
    }

    public void setSourceJobID(long j) {
        this.sourceJobID = j;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.msg.code());
            binaryWriter.writeLong(this.targetJobID);
            binaryWriter.writeLong(this.sourceJobID);
            binaryWriter.close();
        } catch (Throwable th) {
            try {
                binaryWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void deserialize(InputStream inputStream) throws IOException {
        BinaryReader binaryReader = new BinaryReader(inputStream);
        try {
            this.msg = EMsg.from(binaryReader.readInt());
            this.targetJobID = binaryReader.readLong();
            this.sourceJobID = binaryReader.readLong();
            binaryReader.close();
        } catch (Throwable th) {
            try {
                binaryReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
