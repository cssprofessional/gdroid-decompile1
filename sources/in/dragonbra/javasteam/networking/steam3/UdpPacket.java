package in.dragonbra.javasteam.networking.steam3;

import in.dragonbra.javasteam.enums.EUdpPacketType;
import in.dragonbra.javasteam.generated.UdpHeader;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import in.dragonbra.javasteam.util.stream.SeekOrigin;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class UdpPacket {
    public static final int MAX_PAYLOAD = 1244;
    private final UdpHeader header;
    private MemoryStream payload;

    public UdpPacket(MemoryStream memoryStream) {
        UdpHeader udpHeader = new UdpHeader();
        this.header = udpHeader;
        try {
            udpHeader.deserialize(memoryStream);
            if (udpHeader.getMagic() != 825250646) {
                return;
            }
            setPayload(memoryStream, udpHeader.getPayloadSize());
        } catch (IOException unused) {
        }
    }

    public UdpPacket(EUdpPacketType eUdpPacketType) {
        UdpHeader udpHeader = new UdpHeader();
        this.header = udpHeader;
        this.payload = new MemoryStream();
        udpHeader.setPacketType(eUdpPacketType);
    }

    public UdpPacket(EUdpPacketType eUdpPacketType, MemoryStream memoryStream) {
        this(eUdpPacketType);
        setPayload(memoryStream);
    }

    public UdpPacket(EUdpPacketType eUdpPacketType, MemoryStream memoryStream, long j) {
        this(eUdpPacketType);
        setPayload(memoryStream, j);
    }

    public void setPayload(MemoryStream memoryStream) {
        setPayload(memoryStream, memoryStream.getLength() - memoryStream.getPosition());
    }

    public void setPayload(MemoryStream memoryStream, long j) {
        if (j > 1244) {
            throw new IllegalArgumentException("Payload length exceeds 0x4DC maximum");
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        memoryStream.read(bArr, 0, i);
        this.payload = new MemoryStream(bArr);
        this.header.setPayloadSize((short) r3.getLength());
        this.header.setMsgSize((int) this.payload.getLength());
    }

    public byte[] getData() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            this.header.serialize(byteArrayOutputStream);
            this.payload.seek(0L, SeekOrigin.BEGIN);
            byteArrayOutputStream.write(this.payload.toByteArray());
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    public boolean isValid() {
        return this.header.getMagic() == 825250646 && this.header.getPayloadSize() <= 1244 && this.payload != null;
    }

    public UdpHeader getHeader() {
        return this.header;
    }

    public MemoryStream getPayload() {
        return this.payload;
    }
}
