package io.ktor.client.plugins;

import io.ktor.client.statement.HttpResponse;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpCallValidator.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpCallValidatorConfig {
    public final List<Function2<HttpResponse, Continuation<? super Unit>, Object>> responseValidators = new ArrayList();
    public final List<HandlerWrapper> responseExceptionHandlers = new ArrayList();
    public boolean expectSuccess = true;

    public final List<Function2<HttpResponse, Continuation<? super Unit>, Object>> getResponseValidators$ktor_client_core() {
        return this.responseValidators;
    }

    public final List<HandlerWrapper> getResponseExceptionHandlers$ktor_client_core() {
        return this.responseExceptionHandlers;
    }

    public final boolean getExpectSuccess$ktor_client_core() {
        return this.expectSuccess;
    }

    public final void setExpectSuccess$ktor_client_core(boolean z) {
        this.expectSuccess = z;
    }

    public final void validateResponse(Function2<? super HttpResponse, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.responseValidators.add(block);
    }
}
