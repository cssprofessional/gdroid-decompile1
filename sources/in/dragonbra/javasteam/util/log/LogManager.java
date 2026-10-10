package in.dragonbra.javasteam.util.log;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogManager.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LogManager {
    public static final LogManager INSTANCE = new LogManager();
    private static final Map<Class<?>, Logger> LOGGERS = new HashMap();
    public static final List<LogListener> LOG_LISTENERS = new LinkedList();

    private LogManager() {
    }

    public static final Logger getLogger(final Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Map<Class<?>, Logger> map = LOGGERS;
        final Function1 function1 = new Function1() { // from class: in.dragonbra.javasteam.util.log.LogManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LogManager.getLogger$lambda$0(clazz, (Class) obj);
            }
        };
        Logger loggerComputeIfAbsent = map.computeIfAbsent(clazz, new Function() { // from class: in.dragonbra.javasteam.util.log.LogManager$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return LogManager.getLogger$lambda$1(function1, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(loggerComputeIfAbsent, "computeIfAbsent(...)");
        return loggerComputeIfAbsent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Logger getLogger$lambda$0(Class cls, Class it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new Logger(cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Logger getLogger$lambda$1(Function1 function1, Object obj) {
        return (Logger) function1.invoke(obj);
    }

    public static final void addListener(LogListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        LOG_LISTENERS.add(listener);
    }

    public static final void removeListener(LogListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        LOG_LISTENERS.remove(listener);
    }

    public final /* synthetic */ <T> Logger getLogger() {
        Intrinsics.reifiedOperationMarker(4, "T");
        return getLogger(Object.class);
    }
}
