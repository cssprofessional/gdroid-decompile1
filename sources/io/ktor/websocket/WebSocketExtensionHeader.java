package io.ktor.websocket;

import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebSocketExtensionHeader.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketExtensionHeader {
    public final String name;
    public final List<String> parameters;

    public WebSocketExtensionHeader(String name, List<String> parameters) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this.name = name;
        this.parameters = parameters;
    }

    public String toString() {
        return this.name + ' ' + parametersToString();
    }

    public final String parametersToString() {
        if (this.parameters.isEmpty()) {
            return "";
        }
        return "; " + CollectionsKt___CollectionsKt.joinToString$default(this.parameters, ";", null, null, 0, null, null, 62, null);
    }
}
