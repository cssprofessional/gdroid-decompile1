package io.ktor.network.selector;

import java.io.Closeable;
import java.nio.channels.spi.SelectorProvider;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: SelectorManager.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface SelectorManager extends CoroutineScope, Closeable {
    SelectorProvider getProvider();

    void notifyClosed(Selectable selectable);

    Object select(Selectable selectable, SelectInterest selectInterest, Continuation<? super Unit> continuation);
}
