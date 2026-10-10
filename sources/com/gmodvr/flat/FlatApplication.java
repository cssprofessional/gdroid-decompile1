package com.gmodvr.flat;

import android.app.Application;

/* JADX INFO: loaded from: classes.dex */
public final class FlatApplication extends Application {
    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        CrashReporter.install(this);
    }
}
