package kotlinx.coroutines;

import java.io.Closeable;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;

/* JADX INFO: compiled from: Executors.kt */
/* JADX INFO: loaded from: classes3.dex */
public abstract class ExecutorCoroutineDispatcher extends CoroutineDispatcher implements Closeable, AutoCloseable {
    public static final Key Key = new Key(null);

    /* JADX INFO: compiled from: Executors.kt */
    public static final class Key extends AbstractCoroutineContextKey<CoroutineDispatcher, ExecutorCoroutineDispatcher> {
        public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Key() {
            super(CoroutineDispatcher.Key, new Function1() { // from class: kotlinx.coroutines.ExecutorCoroutineDispatcher$Key$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ExecutorCoroutineDispatcher.Key._init_$lambda$0((CoroutineContext.Element) obj);
                }
            });
        }

        public static final ExecutorCoroutineDispatcher _init_$lambda$0(CoroutineContext.Element element) {
            if (element instanceof ExecutorCoroutineDispatcher) {
                return (ExecutorCoroutineDispatcher) element;
            }
            return null;
        }
    }
}
