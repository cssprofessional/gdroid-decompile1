package io.ktor.client.plugins;

import io.ktor.client.request.HttpRequest;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: HttpCallValidator.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestExceptionHandlerWrapper implements HandlerWrapper {
    public final Function3<Throwable, HttpRequest, Continuation<? super Unit>, Object> handler;

    public final Function3<Throwable, HttpRequest, Continuation<? super Unit>, Object> getHandler() {
        return this.handler;
    }
}
