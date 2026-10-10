package in.dragonbra.javasteam.networking.steam3;

import in.dragonbra.javasteam.util.event.Event;
import in.dragonbra.javasteam.util.event.EventArgs;
import java.net.InetAddress;
import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes.dex */
public abstract class Connection {
    protected final Event<NetMsgEventArgs> netMsgReceived = new Event<>();
    protected final Event<EventArgs> connected = new Event<>();
    protected final Event<DisconnectedEventArgs> disconnected = new Event<>();

    public abstract void connect(InetSocketAddress inetSocketAddress, int i);

    public abstract void disconnect(boolean z);

    public abstract InetSocketAddress getCurrentEndPoint();

    public abstract InetAddress getLocalIP();

    public abstract ProtocolTypes getProtocolTypes();

    public abstract void send(byte[] bArr);

    public void onNetMsgReceived(NetMsgEventArgs netMsgEventArgs) {
        this.netMsgReceived.handleEvent(this, netMsgEventArgs);
    }

    public void onConnected() {
        this.connected.handleEvent(this, null);
    }

    public void onDisconnected(boolean z) {
        this.disconnected.handleEvent(this, new DisconnectedEventArgs(z));
    }

    public final void connect(InetSocketAddress inetSocketAddress) {
        connect(inetSocketAddress, 5000);
    }

    public Event<NetMsgEventArgs> getNetMsgReceived() {
        return this.netMsgReceived;
    }

    public Event<EventArgs> getConnected() {
        return this.connected;
    }

    public Event<DisconnectedEventArgs> getDisconnected() {
        return this.disconnected;
    }
}
