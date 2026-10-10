package kotlinx.coroutines.channels;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: Actor.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface ActorScope<E> extends CoroutineScope, ReceiveChannel<E> {
    Channel<E> getChannel();
}
