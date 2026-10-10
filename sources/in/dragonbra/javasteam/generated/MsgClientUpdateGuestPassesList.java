package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgClientUpdateGuestPassesList implements ISteamSerializableMessage {
    private EResult result = EResult.from(0);
    private int countGuestPassesToGive = 0;
    private int countGuestPassesToRedeem = 0;

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.ClientUpdateGuestPassesList;
    }

    public EResult getResult() {
        return this.result;
    }

    public void setResult(EResult eResult) {
        this.result = eResult;
    }

    public int getCountGuestPassesToGive() {
        return this.countGuestPassesToGive;
    }

    public void setCountGuestPassesToGive(int i) {
        this.countGuestPassesToGive = i;
    }

    public int getCountGuestPassesToRedeem() {
        return this.countGuestPassesToRedeem;
    }

    public void setCountGuestPassesToRedeem(int i) {
        this.countGuestPassesToRedeem = i;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.result.code());
            binaryWriter.writeInt(this.countGuestPassesToGive);
            binaryWriter.writeInt(this.countGuestPassesToRedeem);
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
            this.result = EResult.from(binaryReader.readInt());
            this.countGuestPassesToGive = binaryReader.readInt();
            this.countGuestPassesToRedeem = binaryReader.readInt();
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
