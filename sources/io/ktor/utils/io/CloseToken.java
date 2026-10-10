package io.ktor.utils.io;

import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CopyableThrowable;
import kotlinx.coroutines.ExceptionsKt;

/* JADX INFO: compiled from: CloseToken.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CloseToken {
    public final Throwable origin;

    public CloseToken(Throwable th) {
        this.origin = th;
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.CloseToken$wrapCause$1, reason: invalid class name */
    /* JADX INFO: compiled from: CloseToken.kt */
    public static final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<Throwable, ClosedByteChannelException> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1, ClosedByteChannelException.class, "<init>", "<init>(Ljava/lang/Throwable;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final ClosedByteChannelException invoke(Throwable th) {
            return new ClosedByteChannelException(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Throwable wrapCause$default(CloseToken closeToken, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = AnonymousClass1.INSTANCE;
        }
        return closeToken.wrapCause(function1);
    }

    public final Throwable wrapCause(Function1<? super Throwable, ? extends Throwable> wrap) {
        Intrinsics.checkNotNullParameter(wrap, "wrap");
        Object obj = this.origin;
        if (obj == null) {
            return null;
        }
        return obj instanceof CopyableThrowable ? ((CopyableThrowable) obj).createCopy() : obj instanceof CancellationException ? ExceptionsKt.CancellationException(((CancellationException) obj).getMessage(), this.origin) : wrap.invoke(obj);
    }

    public final Unit throwOrNull(Function1<? super Throwable, ? extends Throwable> wrap) throws Throwable {
        Intrinsics.checkNotNullParameter(wrap, "wrap");
        Throwable thWrapCause = wrapCause(wrap);
        if (thWrapCause == null) {
            return null;
        }
        throw thWrapCause;
    }
}
