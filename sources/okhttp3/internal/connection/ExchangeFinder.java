package okhttp3.internal.connection;

/* JADX INFO: compiled from: ExchangeFinder.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface ExchangeFinder {
    RealConnection find();

    RoutePlanner getRoutePlanner();
}
