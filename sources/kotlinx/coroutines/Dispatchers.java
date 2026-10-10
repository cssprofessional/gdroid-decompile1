package kotlinx.coroutines;

import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: compiled from: Dispatchers.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class Dispatchers {
    public static final Dispatchers INSTANCE = new Dispatchers();
    public static final CoroutineDispatcher Default = DefaultScheduler.INSTANCE;
    public static final CoroutineDispatcher Unconfined = Unconfined.INSTANCE;

    public static final CoroutineDispatcher getDefault() {
        return Default;
    }

    public static final MainCoroutineDispatcher getMain() {
        return MainDispatcherLoader.dispatcher;
    }

    public static final CoroutineDispatcher getUnconfined() {
        return Unconfined;
    }

    public static final CoroutineDispatcher getIO() {
        return DefaultIoScheduler.INSTANCE;
    }
}
