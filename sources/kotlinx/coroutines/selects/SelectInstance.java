package kotlinx.coroutines.selects;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: Select.kt */
/* JADX INFO: loaded from: classes3.dex */
public interface SelectInstance<R> {
    CoroutineContext getContext();

    void selectInRegistrationPhase(Object obj);

    boolean trySelect(Object obj, Object obj2);
}
