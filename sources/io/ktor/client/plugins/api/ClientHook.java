package io.ktor.client.plugins.api;

import io.ktor.client.HttpClient;

/* JADX INFO: compiled from: ClientHook.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface ClientHook<HookHandler> {
    void install(HttpClient httpClient, HookHandler hookhandler);
}
