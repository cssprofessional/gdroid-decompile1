package kotlinx.coroutines;

import java.lang.Throwable;
import kotlinx.coroutines.CopyableThrowable;

/* JADX INFO: compiled from: Debug.common.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface CopyableThrowable<T extends Throwable & CopyableThrowable<T>> {
    T createCopy();
}
