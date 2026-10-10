package in.dragonbra.javasteam.steam.authentication;

import in.dragonbra.javasteam.enums.EResult;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AuthenticationException.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AuthenticationException extends Exception {
    private EResult result;

    public final EResult getResult() {
        return this.result;
    }

    public AuthenticationException() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationException(String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationException(String message, EResult result) {
        super(message + " with result: " + result);
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(result, "result");
        this.result = result;
    }
}
