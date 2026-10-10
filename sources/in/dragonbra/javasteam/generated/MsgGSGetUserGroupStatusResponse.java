package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.ISteamSerializableMessage;
import in.dragonbra.javasteam.enums.EClanRank;
import in.dragonbra.javasteam.enums.EClanRelationship;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgGSGetUserGroupStatusResponse implements ISteamSerializableMessage {
    private long steamIdUser = 0;
    private long steamIdGroup = 0;
    private EClanRelationship clanRelationship = EClanRelationship.from(0);
    private EClanRank clanRank = EClanRank.from(0);

    @Override // in.dragonbra.javasteam.base.ISteamSerializableMessage
    public EMsg getEMsg() {
        return EMsg.GSGetUserGroupStatusResponse;
    }

    public SteamID getSteamIdUser() {
        return new SteamID(this.steamIdUser);
    }

    public void setSteamIdUser(SteamID steamID) {
        this.steamIdUser = steamID.convertToUInt64();
    }

    public SteamID getSteamIdGroup() {
        return new SteamID(this.steamIdGroup);
    }

    public void setSteamIdGroup(SteamID steamID) {
        this.steamIdGroup = steamID.convertToUInt64();
    }

    public EClanRelationship getClanRelationship() {
        return this.clanRelationship;
    }

    public void setClanRelationship(EClanRelationship eClanRelationship) {
        this.clanRelationship = eClanRelationship;
    }

    public EClanRank getClanRank() {
        return this.clanRank;
    }

    public void setClanRank(EClanRank eClanRank) {
        this.clanRank = eClanRank;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeLong(this.steamIdUser);
            binaryWriter.writeLong(this.steamIdGroup);
            binaryWriter.writeInt(this.clanRelationship.code());
            binaryWriter.writeInt(this.clanRank.code());
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
            this.steamIdUser = binaryReader.readLong();
            this.steamIdGroup = binaryReader.readLong();
            this.clanRelationship = EClanRelationship.from(binaryReader.readInt());
            this.clanRank = EClanRank.from(binaryReader.readInt());
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
