package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EUdpPacketType {
    Invalid((byte) 0),
    ChallengeReq((byte) 1),
    Challenge((byte) 2),
    Connect((byte) 3),
    Accept((byte) 4),
    Disconnect((byte) 5),
    Data((byte) 6),
    Datagram((byte) 7),
    Max((byte) 8);

    private final byte code;

    EUdpPacketType(byte b) {
        this.code = b;
    }

    public byte code() {
        return this.code;
    }

    public static EUdpPacketType from(byte b) {
        for (EUdpPacketType eUdpPacketType : values()) {
            if (eUdpPacketType.code == b) {
                return eUdpPacketType;
            }
        }
        return null;
    }
}
