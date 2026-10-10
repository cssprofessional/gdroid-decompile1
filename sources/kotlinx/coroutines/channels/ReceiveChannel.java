package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: Channel.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface ReceiveChannel<E> {
    void cancel(CancellationException cancellationException);

    ChannelIterator<E> iterator();

    Object receive(Continuation<? super E> continuation);

    /* JADX INFO: renamed from: tryReceive-PtdJZtk */
    Object mo8261tryReceivePtdJZtk();

    /* JADX INFO: compiled from: Channel.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ void cancel$default(ReceiveChannel receiveChannel, CancellationException cancellationException, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i & 1) != 0) {
                cancellationException = null;
            }
            receiveChannel.cancel(cancellationException);
        }
    }
}
