package kotlin.internal;

import java.io.InvalidObjectException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: serializationUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SerializationUtilKt {
    @InlineOnly
    private static final Void throwReadObjectNotSupported() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    @InlineOnly
    private static final void wrapAsDeserializationException(Function0<Unit> action) throws Throwable {
        Intrinsics.checkNotNullParameter(action, "action");
        try {
            action.invoke();
        } catch (Throwable th) {
            Throwable thInitCause = new InvalidObjectException(th.getMessage()).initCause(th);
            Intrinsics.checkNotNullExpressionValue(thInitCause, "initCause(...)");
            throw thInitCause;
        }
    }
}
