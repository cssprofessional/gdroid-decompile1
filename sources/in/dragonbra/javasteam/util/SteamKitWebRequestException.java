package in.dragonbra.javasteam.util;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.Response;

/* JADX INFO: compiled from: SteamKitWebRequestException.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamKitWebRequestException extends Exception {
    private Headers headers;
    private int statusCode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SteamKitWebRequestException(String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public final void setStatusCode(int i) {
        this.statusCode = i;
    }

    public final Headers getHeaders() {
        return this.headers;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SteamKitWebRequestException(String message, Response response) {
        this(message);
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(response, "response");
        this.statusCode = response.code();
        this.headers = response.headers();
    }
}
