package io.ktor.client.request;

import io.ktor.http.content.OutgoingContent;
import io.ktor.utils.io.ByteChannel;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: ClientUpgradeContent.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ClientUpgradeContent extends OutgoingContent.NoContent {
    public final Lazy content$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: io.ktor.client.request.ClientUpgradeContent$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ClientUpgradeContent.content_delegate$lambda$0();
        }
    });

    public static final ByteChannel content_delegate$lambda$0() {
        return new ByteChannel(false, 1, null);
    }
}
