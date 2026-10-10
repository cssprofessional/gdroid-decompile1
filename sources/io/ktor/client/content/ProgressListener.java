package io.ktor.client.content;

import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: ObservableContent.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface ProgressListener {
    Object onProgress(long j, Long l, Continuation<? super Unit> continuation);
}
