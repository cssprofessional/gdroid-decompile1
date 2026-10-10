package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: CancellableContinuationImpl.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface CancelHandler extends NotCompleted {
    void invoke(Throwable th);

    /* JADX INFO: compiled from: CancellableContinuationImpl.kt */
    public static final class UserSupplied implements CancelHandler {
        public final Function1<Throwable, Unit> handler;

        /* JADX WARN: Multi-variable type inference failed */
        public UserSupplied(Function1<? super Throwable, Unit> function1) {
            this.handler = function1;
        }

        @Override // kotlinx.coroutines.CancelHandler
        public void invoke(Throwable th) {
            this.handler.invoke(th);
        }

        public String toString() {
            return "CancelHandler.UserSupplied[" + DebugStringsKt.getClassSimpleName(this.handler) + '@' + DebugStringsKt.getHexAddress(this) + ']';
        }
    }
}
