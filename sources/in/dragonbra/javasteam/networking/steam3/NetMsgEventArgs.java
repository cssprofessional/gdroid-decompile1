package in.dragonbra.javasteam.networking.steam3;

import in.dragonbra.javasteam.util.event.EventArgs;
import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes.dex */
public class NetMsgEventArgs extends EventArgs {
    private final byte[] data;
    private final InetSocketAddress endPoint;

    public NetMsgEventArgs(byte[] bArr, InetSocketAddress inetSocketAddress) {
        this.data = bArr;
        this.endPoint = inetSocketAddress;
    }

    public NetMsgEventArgs withData(byte[] bArr) {
        return new NetMsgEventArgs(bArr, this.endPoint);
    }

    public byte[] getData() {
        return this.data;
    }

    public InetSocketAddress getEndPoint() {
        return this.endPoint;
    }
}
