package io.ktor.client.plugins;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: HttpCallValidator.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ExceptionHandlerWrapper implements HandlerWrapper {
    public final Function2<Throwable, Continuation<? super Unit>, Object> handler;

    public final Function2<Throwable, Continuation<? super Unit>, Object> getHandler() {
        return this.handler;
    }
}
