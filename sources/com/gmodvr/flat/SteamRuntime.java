package com.gmodvr.flat;

import android.content.Context;
import java.security.Security;
import okhttp3.OkHttp;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

/* JADX INFO: loaded from: classes.dex */
final class SteamRuntime {
    private static boolean prepared;

    private SteamRuntime() {
    }

    public static synchronized void prepare(Context context) {
        if (prepared) {
            return;
        }
        crypto();
        OkHttp.INSTANCE.initialize(context.getApplicationContext());
        prepared = true;
    }

    public static void crypto() {
        if (Security.getProvider("BC") instanceof BouncyCastleProvider) {
            return;
        }
        Security.removeProvider("BC");
        Security.addProvider(new BouncyCastleProvider());
    }
}
