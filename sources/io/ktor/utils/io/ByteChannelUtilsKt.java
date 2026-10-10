package io.ktor.utils.io;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: ByteChannelUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteChannelUtilsKt {
    public static final void attachJob(final ByteChannel byteChannel, Job job) {
        Intrinsics.checkNotNullParameter(byteChannel, "<this>");
        Intrinsics.checkNotNullParameter(job, "job");
        job.invokeOnCompletion(new Function1() { // from class: io.ktor.utils.io.ByteChannelUtilsKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ByteChannelUtilsKt.attachJob$lambda$0(byteChannel, (Throwable) obj);
            }
        });
    }

    public static final Unit attachJob$lambda$0(ByteChannel byteChannel, Throwable th) {
        if (th != null) {
            byteChannel.cancel(th);
        }
        return Unit.INSTANCE;
    }

    public static final void attachJob(ByteChannel byteChannel, ChannelJob job) {
        Intrinsics.checkNotNullParameter(byteChannel, "<this>");
        Intrinsics.checkNotNullParameter(job, "job");
        attachJob(byteChannel, job.getJob());
    }
}
