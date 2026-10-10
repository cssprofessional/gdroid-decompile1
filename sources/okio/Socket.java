package okio;

/* JADX INFO: compiled from: Socket.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface Socket {
    void cancel();

    Sink getSink();

    Source getSource();
}
