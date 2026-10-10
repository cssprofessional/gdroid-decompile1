package io.ktor.network.selector;

import java.io.Closeable;
import java.nio.channels.SelectableChannel;
import kotlinx.coroutines.DisposableHandle;

/* JADX INFO: compiled from: JvmSelector.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface Selectable extends Closeable, DisposableHandle {
    SelectableChannel getChannel();

    int getInterestedOps();

    InterestSuspensionsMap getSuspensions();

    void interestOp(SelectInterest selectInterest, boolean z);

    boolean isClosed();
}
