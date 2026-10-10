package okhttp3.internal.platform;

import android.content.Context;

/* JADX INFO: compiled from: ContextAwarePlatform.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface ContextAwarePlatform {
    Context getApplicationContext();

    void setApplicationContext(Context context);
}
