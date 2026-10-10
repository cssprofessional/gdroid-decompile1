package okhttp3.internal.publicsuffix;

import okio.ByteString;

/* JADX INFO: compiled from: PublicSuffixList.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface PublicSuffixList {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* JADX INFO: compiled from: PublicSuffixList.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
    }

    void ensureLoaded();

    ByteString getBytes();

    ByteString getExceptionBytes();
}
