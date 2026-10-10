package in.dragonbra.javasteam.generated;

import in.dragonbra.javasteam.base.gc.IGCSerializableHeader;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.BinaryWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class MsgGCHdrProtoBuf implements IGCSerializableHeader {
    private int msg = 0;
    private int headerLength = 0;
    private SteammessagesBase.CMsgProtoBufHeader.Builder proto = SteammessagesBase.CMsgProtoBufHeader.newBuilder();

    @Override // in.dragonbra.javasteam.base.gc.IGCSerializableHeader
    public void setEMsg(int i) {
        this.msg = i;
    }

    public int getMsg() {
        return this.msg;
    }

    public void setMsg(int i) {
        this.msg = i;
    }

    public int getHeaderLength() {
        return this.headerLength;
    }

    public void setHeaderLength(int i) {
        this.headerLength = i;
    }

    public SteammessagesBase.CMsgProtoBufHeader.Builder getProto() {
        return this.proto;
    }

    public void setProto(SteammessagesBase.CMsgProtoBufHeader.Builder builder) {
        this.proto = builder;
    }

    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void serialize(OutputStream outputStream) throws IOException {
        BinaryWriter binaryWriter = new BinaryWriter(outputStream);
        try {
            binaryWriter.writeInt(this.msg);
            byte[] byteArray = this.proto.build().toByteArray();
            int length = byteArray.length;
            this.headerLength = length;
            binaryWriter.writeInt(length);
            binaryWriter.write(byteArray);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // in.dragonbra.javasteam.base.ISteamSerializable
    public void deserialize(InputStream inputStream) throws IOException {
        BinaryReader binaryReader = new BinaryReader(inputStream);
        try {
            this.msg = binaryReader.readInt();
            int i = binaryReader.readInt();
            this.headerLength = i;
            this.proto = (SteammessagesBase.CMsgProtoBufHeader.Builder) SteammessagesBase.CMsgProtoBufHeader.newBuilder().mergeFrom(binaryReader.readBytes(i));
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
