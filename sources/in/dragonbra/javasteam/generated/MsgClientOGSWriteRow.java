package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientOGSWriteRow implements ISteamSerializableMessage {
    private long sessionId = 0;
    private int countAttributes = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientOGSWriteRow;
    }

    public long getSessionId() {
        return this.sessionId;
    }

    public void setSessionId(long j) {
        this.sessionId = j;
    }

    public int getCountAttributes() {
        return this.countAttributes;
    }

    public void setCountAttributes(int i) {
        this.countAttributes = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeLong(this.sessionId);
            binaryWriter.writeInt(this.countAttributes);
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
            this.sessionId = binaryReader.readLong();
            this.countAttributes = binaryReader.readInt();
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
