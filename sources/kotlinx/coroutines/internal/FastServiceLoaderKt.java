package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: compiled from: FastServiceLoader.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class FastServiceLoaderKt {
    public static final boolean ANDROID_DETECTED;

    static {
        Object objM8149constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            objM8149constructorimpl = Result.m8149constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM8149constructorimpl = Result.m8149constructorimpl(ResultKt.createFailure(th));
        }
        ANDROID_DETECTED = Result.m8152isSuccessimpl(objM8149constructorimpl);
    }

    public static final boolean getANDROID_DETECTED() {
        return ANDROID_DETECTED;
    }
}
