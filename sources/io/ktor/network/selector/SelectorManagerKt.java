package io.ktor.network.selector;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SelectorManager.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SelectorManagerKt {
    public static final SelectorManager SelectorManager(CoroutineContext dispatcher) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return new ActorSelectorManager(dispatcher);
    }
}
