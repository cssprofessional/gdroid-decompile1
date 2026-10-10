package io.ktor.websocket;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: WebSocketExtension.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketExtensionsConfig {
    public final List<Function0<WebSocketExtension<?>>> installers = new ArrayList();
    public final Boolean[] rcv;

    public WebSocketExtensionsConfig() {
        Boolean bool = Boolean.FALSE;
        this.rcv = new Boolean[]{bool, bool, bool};
    }

    public final List<WebSocketExtension<?>> build() {
        List<Function0<WebSocketExtension<?>>> list = this.installers;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((WebSocketExtension) ((Function0) it.next()).invoke());
        }
        return arrayList;
    }
}
