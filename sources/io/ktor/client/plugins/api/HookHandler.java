package io.ktor.client.plugins.api;

import io.ktor.client.HttpClient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientHook.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HookHandler<T> {
    public final T handler;
    public final ClientHook<T> hook;

    public HookHandler(ClientHook<T> hook, T t) {
        Intrinsics.checkNotNullParameter(hook, "hook");
        this.hook = hook;
        this.handler = t;
    }

    public final void install(HttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        this.hook.install(client, this.handler);
    }
}
