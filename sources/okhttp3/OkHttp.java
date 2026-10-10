package okhttp3;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.platform.PlatformRegistry;

/* JADX INFO: compiled from: OkHttp.android.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class OkHttp {
    public static final OkHttp INSTANCE = new OkHttp();
    public static final String VERSION = "5.3.2";

    public final void initialize(Context applicationContext) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        PlatformRegistry platformRegistry = PlatformRegistry.INSTANCE;
        if (platformRegistry.getApplicationContext() == null) {
            platformRegistry.setApplicationContext(applicationContext.getApplicationContext());
        }
    }
}
