package io.ktor.websocket;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: WebSocketExtensionHeader.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketExtensionHeaderKt {
    public static final List<WebSocketExtensionHeader> parseWebSocketExtensions(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) value, new String[]{","}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listSplit$default, 10));
        Iterator it = listSplit$default.iterator();
        while (it.hasNext()) {
            List listSplit$default2 = StringsKt__StringsKt.split$default((CharSequence) it.next(), new String[]{";"}, false, 0, 6, (Object) null);
            String string = StringsKt__StringsKt.trim((String) CollectionsKt___CollectionsKt.first(listSplit$default2)).toString();
            List listDrop = CollectionsKt___CollectionsKt.drop(listSplit$default2, 1);
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listDrop, 10));
            Iterator it2 = listDrop.iterator();
            while (it2.hasNext()) {
                arrayList2.add(StringsKt__StringsKt.trim((String) it2.next()).toString());
            }
            arrayList.add(new WebSocketExtensionHeader(string, arrayList2));
        }
        return arrayList;
    }
}
