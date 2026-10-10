package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EServerType;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientServerUnavailable implements ISteamSerializableMessage {
    private long jobidSent = 0;
    private int eMsgSent = 0;
    private EServerType eServerTypeUnavailable = EServerType.from(0);

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientServerUnavailable;
    }

    public long getJobidSent() {
        return this.jobidSent;
    }

    public void setJobidSent(long j) {
        this.jobidSent = j;
    }

    public int getEMsgSent() {
        return this.eMsgSent;
    }

    public void setEMsgSent(int i) {
        this.eMsgSent = i;
    }

    public EServerType getEServerTypeUnavailable() {
        return this.eServerTypeUnavailable;
    }

    public void setEServerTypeUnavailable(EServerType eServerType) {
        this.eServerTypeUnavailable = eServerType;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeLong(this.jobidSent);
            binaryWriter.writeInt(this.eMsgSent);
            binaryWriter.writeInt(this.eServerTypeUnavailable.code());
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
            this.jobidSent = binaryReader.readLong();
            this.eMsgSent = binaryReader.readInt();
            this.eServerTypeUnavailable = EServerType.from(binaryReader.readInt());
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
